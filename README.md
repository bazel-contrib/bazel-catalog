# Bazel Catalog

See the live site:
<https://bazel-contrib.github.io/bazel-catalog>

## Developing

This is written in Bash and JQ.

To work in this repository, it helps to understand the structure and dataflows.

1. Ingest data from sources into this repo to produce a "sync" PR.

   - From BCR using `scripts/merge_bcr_metadata.sh`. This is intended to be non-destructive.
   - From GitHub API using `scripts/collect_github_stats.sh`

2. git data produced by `collect_gitstats.sh` is slow to collect and has a giant output, which
   goes into the `gitstats` folder in the `gh-pages` branch to avoid bloating the `main` branch.

GitHub Actions will then take over automatically, running the render.yml workflow which:

1. Runs `scripts/render_ghpages.sh` to produce the rest of the content in the `gh-pages` branch.
   - This script runs `filters/*_data.jq` to get some datapoints which we render in markdown
2. Pushes the `gh-pages` branch
3. A separate GHA workflow updates the live GitHub pages site after the gh-pages branch changes.

Still needed:

- [ ] Cron-style automation for data ingest.
