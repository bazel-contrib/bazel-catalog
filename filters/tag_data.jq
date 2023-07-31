# Transform the data produced into stats/*/tags.json for scoring and display.
# See scripts/collect_github_stats.sh where tags.json is written
[
    # Zero-th index because we assume GitHub returns the data most-recent-first
    .[0].name,
    (
        # If the tag has no name, we assume it's a pre-release tag
        .[0].name // "0.0.0" | startswith("v0") or startswith("0")
    )
] | @csv