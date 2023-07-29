#!/usr/bin/env bash
# Run https://gitstats.sourceforge.net/ on each ghrepo in rulesets.json,
# writing the html reports under the docs/ folder where GitHub Pages can serve them.
#
# Note, this assumes you already installed gitstats, see the GITSTATS_BIN variable to point to it.
# It also relies on `jq` being on the PATH.
set -o errexit -o nounset -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
OUTPUT_ROOT=$(mktemp -d /tmp/gitstats.XXX)
CLONES_DIR=${CLONES_DIR:-$HOME/bazel-clones}
GITSTATS_BIN=${GITSTATS_BIN:-$HOME/Projects/hoxu-gitstats-55c5c28/gitstats}

[ -d "$CLONES_DIR" ] || mkdir -p "$CLONES_DIR"
[ -d "$OUTPUT_ROOT" ] || mkdir -p "$OUTPUT_ROOT"

while IFS= read -r ghrepo;
do
    DESTDIR="$OUTPUT_ROOT/$ghrepo"
    echo "fetching ${ghrepo}..."
    repo=$(basename "$ghrepo")
    cd "$CLONES_DIR"
    [ -d "$repo" ] || git clone "https://github.com/$ghrepo.git"
    cd "$repo"

    {
        git reset --hard
        git clean -ffdx
        git fetch --tags
    } > /dev/null 2>&1

    "$GITSTATS_BIN" . "$DESTDIR"

    echo "- [${ghrepo}](./${ghrepo})" >> "$OUTPUT_ROOT"/index.md
done < <(
    jq --raw-output \
    --from-file "${SCRIPT_DIR}"/../filters/ghrepo.jq \
    < "$SCRIPT_DIR"/../rulesets.json
)

echo "Now overwrite the gh-pages branch with content from ${OUTPUT_ROOT}"
