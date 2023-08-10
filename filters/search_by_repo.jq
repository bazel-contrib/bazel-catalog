[
    .rulesets[]
    | select(.repository | contains($ruleset))
]
| if length > 0 
    then map(.repository)[]
    else "ERROR: no matches for " + $ruleset | halt_error(1)
  end