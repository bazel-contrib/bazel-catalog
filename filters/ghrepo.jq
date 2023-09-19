# Sort by stars, descending
.rulesets | sort_by(.stargazers_count) | reverse

# Grab all the repository fields
| map(.repository)

# Keep only the ones that start with "github:" and trim that prefix
| map(select(startswith("github:"))) 
| map(ltrimstr("github:")) 

# Return the result as a flat list of strings, intended with --raw-output
| .[]
