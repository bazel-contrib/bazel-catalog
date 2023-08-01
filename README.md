# Bazel Catalog

See the live site:
<https://bazel-contrib.github.io/bazel-catalog>

## Scoring

See the `filters/*_score.jq` files for how the scores are computed. These are very naive and should
maybe use something like https://chaoss.github.io/grimoirelab/ to be sophisticated.

## Developing

This is written in Bash and JQ.

To work in this repository, it helps to understand the structure and dataflows.

1. Ingest data from sources into this repo to produce a "sync" PR.

   - From BCR using `scripts/merge_bcr_metadata.sh`. This is intended to be non-destructive.
   - From GitHub API using `scripts/collect_github_stats.sh`

2. git data produced by `collect_gitstats.sh` is slow to collect and has a giant output, which
   goes into the `gitstats` folder in the `gh-pages` branch to avoid bloating the `main` branch.
3. Run `scripts/generate_ghpages.sh` to produce the rest of the content in the `gh-pages` branch.

   - This script runs `filters/*_data.jq` to get some datapoints which we render in markdown,
     then calls `filters/*_score.jq` to aggregate to a high-level "red flag"/"green flag".

4. Push the `gh-pages` branch and watch GH Actions to know when the site is live.

Still needed:

- [ ] Cron-style automation for data ingest.
- [ ] More realistic scoring.
