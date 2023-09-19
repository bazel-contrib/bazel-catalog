#!/usr/bin/env bash
# Run https://gitstats.sourceforge.net/ on each ghrepo in rulesets.json,
# writing the html reports under the docs/ folder where GitHub Pages can serve them.
#
# Note, this assumes you already installed gitstats, see the GITSTATS_BIN variable to point to it.
# It also relies on `jq` being on the PATH.
set -o errexit -o nounset -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
OUTPUT_ROOT="$SCRIPT_DIR"/../stats
if [ -z "${GH_TOKEN:-}" ]; then
    echo >&2 "Set GH_TOKEN to a GitHub token. Make one at https://github.com/settings/tokens"
    exit 1
fi

function ghapi() {
    curl 2> /dev/null \
        -u "$USER:$GH_TOKEN" \
        -H "Accept: application/vnd.github.v3+json" \
        "https://api.github.com/$1"
}

tmp=$(mktemp)
while IFS= read -r ghrepo;
do
    DESTDIR="$OUTPUT_ROOT/$ghrepo"
    echo "GET stats for ${ghrepo}..."
            
    mkdir -p "$DESTDIR"
    ghapi "repos/$ghrepo" > "$DESTDIR/repo.json"
    ghapi "repos/$ghrepo/stats/participation" | jq .all > "$DESTDIR/participation.json"
    ghapi "repos/$ghrepo/community/profile" > "$DESTDIR/community_profile.json"
    ghapi "repos/$ghrepo/tags" | jq 'map({name: .name, sha: .commit.sha})' > "$DESTDIR/tags.json"
    ghapi "repos/$ghrepo/releases" | jq \
        'map({name: .tag_name, date: .published_at, mentions: .mentions_count, downloads: (.assets | map({name: .name, count: .download_count, size: .size}))})' \
        > "$DESTDIR/releases.json"
    
    # Copy some data back to the rulesets database for easier rendering later.
    stars=$(jq '.stargazers_count' < "$DESTDIR/repo.json")
    jq ".rulesets |= map( if (.repository == \"github:$ghrepo\") then (.stargazers_count = $stars) else . end)" "$SCRIPT_DIR/../rulesets.json" > "$tmp"
    cp "$tmp" "${SCRIPT_DIR}"/../rulesets.json
done < <(
    jq --raw-output \
    --from-file "${SCRIPT_DIR}"/../filters/ghrepo.jq \
    < "$SCRIPT_DIR"/../rulesets.json
)

date > "$OUTPUT_ROOT"/updated.txt