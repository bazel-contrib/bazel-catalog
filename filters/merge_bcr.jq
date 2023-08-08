# Assign the current "rulesets" object from the first document
(
    .[0].rulesets
) as $rulesets

# Assign a "bcr" object which extracts from the second document the non-empty repository values,
# and formats each as an object that matches the structure of the first document.
| (
    .[1]
    | map(select(.metadata.repository | length > 0))
    #| map(.metadata.repository // "")
    #| flatten
    #| map(select(length > 0))
    | map({
        "repository": .metadata.repository[0],
        "maintainers": .metadata.maintainers,
    })
) as $bcr

# Replace the rulesets property in the first document with the merge
| .[0].rulesets = (
    # combine them naively
    ($bcr + $rulesets)
    # create arrays with common repository for merging
    | group_by(.repository)
    # reduce each array, combining fields.
    | map(reduce .[] as $item ({}; . + $item))
)

# Print the first document, now that it was modified
| .[0]
