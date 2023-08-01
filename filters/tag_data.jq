# Transform the data produced into stats/*/tags.json for scoring and display.
# See scripts/collect_github_stats.sh where tags.json is written
[
    # Zero-th index because we assume GitHub returns the data most-recent-first
    .[0].name,
] | @csv