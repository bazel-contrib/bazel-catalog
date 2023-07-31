# Transforms the result of a GitHub repo GET call, e.g. https://api.github.com/repos/my-org/my-repo
[
    .subscribers_count,
    .stargazers_count,
    .forks_count,
    .open_issues_count,

    # Age of the repository since creation, in days
    ((now - (.created_at | fromdate)) / 86400 | floor)
] | @csv
