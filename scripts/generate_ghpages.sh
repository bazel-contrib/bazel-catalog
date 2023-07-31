#!/usr/bin/env bash
# Create markdown files for a Jekyll-powered GitHub Pages website UI for the catalog.
#
# You should first run collect_github_stats.sh to update stats/**/*.json, which this script reads.
set -o nounset -o errexit -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
OUTPUT_ROOT=${OUTPUT_ROOT:-$(mktemp -d /tmp/github_pages.XXX)}

[ -d "$OUTPUT_ROOT" ] || mkdir -p "$OUTPUT_ROOT"

cp "$SCRIPT_DIR"/../index.md "$OUTPUT_ROOT"/index.md
while IFS= read -r ghrepo;
do
    DESTDIR="$OUTPUT_ROOT/$ghrepo"
    mkdir -p "$DESTDIR"
    
    IFS=$',' read -r subscribers stars forks issues has_dl < <(
        jq --raw-output '[.subscribers_count, .stargazers_count, .forks_count, .open_issues_count, .has_downloads] | @csv' "$SCRIPT_DIR/../stats/$ghrepo/repo.json"
    )
    health=$(jq --raw-output '.health_percentage' "$SCRIPT_DIR/../stats/$ghrepo/community_profile.json")
    cat > "$DESTDIR"/index.md <<EOF
# $ghrepo

## Adoption

Has downloads? ${has_dl}
![GitHub all releases](https://img.shields.io/github/downloads/$ghrepo/total)

> Note, no downloads likely means this is distributed using source tarballs instead.

- Subscribers: ${subscribers}
- Stargazers: ${stars}
- Forks: ${forks}

## Maintenance

![GitHub contributors](https://img.shields.io/github/contributors/$ghrepo)
![GitHub last commit (by committer)](https://img.shields.io/github/last-commit/$ghrepo)
![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/$ghrepo)

- Community Health: ${health}%
- Open issues: ${issues}

> Note, a large number of issues may indicate that maintainers don't correct defects, but might also
> just be an indicator of lots of users.

## Quality

*No data yet*

## Stability

![GitHub tag (with filter)](https://img.shields.io/github/v/tag/$ghrepo)

## More Data

[Detailed Gitstats](/bazel-catalog/gitstats/${ghrepo})

EOF

    # TODO: fill in these "Unknown" placeholders with "green/Likely", "yellow/unsure", "red/Unlikely"
    echo "| [${ghrepo}](./${ghrepo}) | Unknown | Unknown | Unknown | Unknown |" >> "$OUTPUT_ROOT"/index.md
done < <(
    jq --raw-output \
    --from-file "${SCRIPT_DIR}"/../filters/ghrepo.jq \
    < "$SCRIPT_DIR"/../rulesets.json
)

echo "Done, output in $OUTPUT_ROOT"
