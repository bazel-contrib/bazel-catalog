#!/usr/bin/env bash
# Convenience script to edit the rulesets.json file
set -o errexit -o nounset -o pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

command -v "jq" &> /dev/null || {
    echo >&2 "ERROR: jq needs to be installed, see https://jqlang.github.io/jq/download/"
    exit 1
}

echo "NOTE: if the ruleset comes from Bazel Central Registry, it's better to add the maintainer there!"
echo
read -rp "Search for a ruleset: " ruleset
matches=$(jq --raw-output --arg ruleset "$ruleset" --from-file "$SCRIPT_DIR/../filters/search_by_repo.jq" "$SCRIPT_DIR/../rulesets.json")
PS3="Select match: "
select repo in $matches; do
    break
done
echo "Adding a maintainer for $repo"
read -rp "Maintainer name: " name
read -rp "Maintainer email: " email
read -rp "Maintainer github: " github

edited=$(mktemp)
jq "{name: \"$name\", email: \"$email\", github: \"$github\"} as \$new | .rulesets |= map( if (.repository == \"$repo\") then (.maintainers += [\$new]) else . end)" "$SCRIPT_DIR/../rulesets.json" > "$edited"

if [[ -n "${DRY_RUN:-}" ]]; then
  echo "Result in $edited"
else
  cp "$edited" "${SCRIPT_DIR}"/../rulesets.json
  echo "Wrote result to rulesets.json."
fi
