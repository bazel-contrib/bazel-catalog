[
    # Sum across releases and files within a release, or zero if there's no data
    (map(.downloads | map(.count) | add) | add) // 0,

    # Age of most recent release, in days
    (
        if .[0]
        then (now - (.[0].date | fromdate)) / 86400 | floor
        else "<No Releases>" end
    )
] | @csv
