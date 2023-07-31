# Overall assessment "is this repo widely-adopted", based on data supplied as arguments

[
    # Stargazer count is ~20 on a small repo and ~300 on a major Bazel repo
    # So fewer than 10 looks like a red flag, and over 250 is a green flag.
    if (($stars | tonumber) < 10) then -1 elif (($stars | tonumber) > 250) then 1 else 0 end,

    # From some quick observation, forks tend to be about half as many as stars.
    if (($forks | tonumber) < 5) then -1 elif (($forks | tonumber) > 125) then 1 else 0 end,

    # Downloads range from over 7000 on base libs like skylib, to zero
    if (($downloads | tonumber) < 1) then -1 elif (($downloads | tonumber) > 5000) then 1 else 0 end

] | add
| if . > 0 then "Widely adopted" elif . < 0 then "Poorly adopted" else "Unclear" end