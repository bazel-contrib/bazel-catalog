This site under construction. See <https://github.com/bazel-contrib/SIG-rules-authors/issues/2>

We attempt to list many Bazel rulesets, and provide guidance about which ones are best to depend on.
Modules listed on <https://registry.bazel.build> are periodically mirrored here.

General guidance we want to provide for Bazel users includes:

- **Adopted**: does the repository have an observable userbase?
  - [ ] Number of downloads of release artifacts per week
  - [ ] GitHub web traffic (can we gather it?)
  - [ ] Stargazer and Fork counts
  - **Caveats**: some repos are heavily used by large companies in private repos, such usage is undercounted.
- **Maintained**: is there evidence that active maintenance activity is taking place?
  - [ ] Recent and regular releases/tags? Recent and regular commits?
  - [ ] Issues: do they get replies? Maybe # issues per user.
  - [ ] <https://docs.github.com/en/rest/reference/repos#get-community-profile-metrics>
- **Quality**: does the repo appear to use techniques like automated testing to keep high quality guarantees?
  - [ ] Has _any_ tests
  - [ ] "Test Harvester" metric - do commits generally contain a mix of test/non-test code?
  - [ ] Coverage: probably too hard for us to gather since it's a "dynamic analysis"
- **Stable**: if you depend on this library today, will you be able to upgrade easily to continue using new versions in the future?
  - [ ] Is there a semver policy specified on the README?
  - [ ] Delineates public vs. private APIs
  - [ ] Has it reached a 1.0 version?

In addition we should gather:

- [ ] Supported Operating systems, in particular is it known to work on Windows?
- [ ] Supported Bazel versions? (though maybe only BCR can document this)
- [ ] Does it appear on the Bazel Central Registry?

Other future datasources may include:

- oss-compass, e.g. [report for rules_docker](https://oss-compass.org/analyze/snbnfub0)

<!-- content for this table is filled in by ./scripts/generate_ghpages.sh -->

| Repository | Adopted | Maintained | Stable |
| ---------- | ------- | ---------- | ------ |
