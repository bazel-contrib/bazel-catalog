# Overall assessment "is this repo maintained", based on data supplied as arguments

[
    # Has it been a "long time" since the last release?
    # Releasing on a monthly cadence seems like a bare minimum for a well-maintained project,
    # except in cases where the repo is very stable so nothing really needs to be done.
    # If it has been over a year, that's a pretty bad red flag.
    try
        if $last_release_age_days | tonumber <= 30 then 1 elif $last_release_age_days | tonumber > 365 then -1 else 0 end
    catch 0

    # TODO: need more inputs to give better scoring
] | add
| if . > 0 then "Maintained" elif . < 0 then "Unmaintained" else "Unclear" end
