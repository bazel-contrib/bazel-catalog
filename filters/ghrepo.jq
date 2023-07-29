# Grab all the repository fields
[.rulesets[].repository]

# Keep only the ones that start with "github:" and trim that prefix
| map(select(startswith("github:"))) 
| map(ltrimstr("github:")) 

# Return the result as a flat list of strings, intended with --raw-output
| .[]
