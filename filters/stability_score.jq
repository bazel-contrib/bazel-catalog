# Overall assessment "is this repo stable", based on data supplied as arguments

[
    # Pre-release is a red flag
    if $pre_1_0 == "true" then -1 else 0 end

    # TODO: need more inputs to give better scoring
] | add
| if . > 0 then "Stable" elif . < 0 then "Unstable" else "Unclear" end