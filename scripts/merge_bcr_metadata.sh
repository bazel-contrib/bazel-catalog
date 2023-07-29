#!/usr/bin/env bash
# Mirror data we care about from the Bazel Central Registry, and merge into our rulesets.json DB.
# Run with DRY_RUN=1 to preview the changes.
set -o errexit -o nounset -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CLONES_DIR=${CLONES_DIR:-$HOME/bazel-clones}
METADATA=$(mktemp) # "$SCRIPT_DIR"/../data/bcr_metadata.json

cd "$CLONES_DIR"
ghrepo=bazelbuild/bazel-central-registry
repo=$(basename "$ghrepo")
[ -d "$repo" ] || git clone "https://github.com/$ghrepo.git"
cd "$repo"
{
    git reset --hard
    git clean -ffdx
    git fetch --tags
} > /dev/null 2>&1

echo "Collecting BCR metadata in ${METADATA}..."
find . -name metadata.json -print0 | \
  xargs -0 jq -n '[inputs | {module_name: input_filename | split("/") | .[2], metadata: .}]' \
  > "$METADATA"

merged=$(mktemp)
jq --slurp --from-file "${SCRIPT_DIR}"/../filters/merge_bcr.jq "${SCRIPT_DIR}"/../rulesets.json "$METADATA" > "$merged"

if [[ -n "${DRY_RUN:-}" ]]; then
  echo "Result in $merged"
else
  cp "$merged" "${SCRIPT_DIR}"/../rulesets.json
  echo "Wrote merged result to ${SCRIPT_DIR}/../rulesets.json"
fi
