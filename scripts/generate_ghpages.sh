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

    # Read data into bash variables, pretty awkward yup
    IFS=$',' read -r subscribers_count stargazers_count forks_count open_issues_count repo_age_days < <(
        jq --raw-output --from-file "$SCRIPT_DIR/../filters/repo_data.jq" "$SCRIPT_DIR/../stats/$ghrepo/repo.json"
    )
    IFS=$',' read -r last_tag < <(
        jq --raw-output --from-file "$SCRIPT_DIR/../filters/tag_data.jq" < "$SCRIPT_DIR/../stats/$ghrepo/tags.json"
    )
    IFS=$',' read -r total_downloads last_release_age_days < <(
        jq --raw-output --from-file "$SCRIPT_DIR/../filters/release_data.jq" < "$SCRIPT_DIR/../stats/$ghrepo/releases.json"
    )

    # Calculate some derivative metrics
    downloads_per_day=$((total_downloads / repo_age_days))
    health_percentage=$(jq --raw-output '.health_percentage' "$SCRIPT_DIR/../stats/$ghrepo/community_profile.json")

    # Render the output
    cat > "$DESTDIR"/index.md <<EOF
# $ghrepo

## Adoption

- Subscribers: ${subscribers_count}
- Stargazers: ${stargazers_count}
- Forks: ${forks_count}
- Total downloads (sum over all releases and artifacts): ${total_downloads}
- Age of repository (just to put absolute downloads into relative terms): ${repo_age_days} days
- Downloads/day: ${downloads_per_day}

> Note, no downloads likely means this is distributed using source tarballs instead.

## Maintenance

- Community Health: ${health_percentage}%
- Open issues: ${open_issues_count}
- Age of last release: ${last_release_age_days} days

> Note, a large number of issues may indicate that maintainers don't correct defects, but might also
> just be an indicator of lots of users.

## Stability

Most recent tag: ${last_tag}

## More Data

[Detailed Gitstats](/bazel-catalog/gitstats/${ghrepo})

EOF

    # Finally record our result in the table on the homepage.
    echo "| [${ghrepo}](./${ghrepo}) | ![GitHub all releases](https://img.shields.io/github/downloads/$ghrepo/total) ![GitHub forks](https://img.shields.io/github/forks/$ghrepo) ![GitHub stars](https://img.shields.io/github/stars/$ghrepo) | ![GitHub contributors](https://img.shields.io/github/contributors/$ghrepo) ![GitHub last commit (by committer)](https://img.shields.io/github/last-commit/$ghrepo) ![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/$ghrepo) ![GitHub issues](https://img.shields.io/github/issues/$ghrepo) ![GitHub pull requests](https://img.shields.io/github/issues-pr/$ghrepo) | ![GitHub tag (with filter)](https://img.shields.io/github/v/tag/$ghrepo) |" >> "$OUTPUT_ROOT"/index.md
done < <(
    jq --raw-output \
    --from-file "${SCRIPT_DIR}"/../filters/ghrepo.jq \
    < "$SCRIPT_DIR"/../rulesets.json
)

echo "Done, output in $OUTPUT_ROOT"
