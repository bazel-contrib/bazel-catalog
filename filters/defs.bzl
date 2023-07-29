"Helper to test jq filters"
load("@aspect_bazel_lib//lib:jq.bzl", "jq")
load("@aspect_bazel_lib//lib:testing.bzl", "assert_json_matches")
load("@bazel_skylib//rules:diff_test.bzl", "diff_test")
load("@bazel_skylib//rules:write_file.bzl", "write_file")


# buildifier: disable=function-docstring
def assert_jq(name, inputs, filter_file, expected_text = None, expected_json = None, args = []):
    for (i, input) in enumerate(inputs):
        write_file(
            name = "_{}_input_{}".format(name, i),
            out = "_{}.input_{}.json".format(name, i),
            content = [json.encode(input)],
        )

    if expected_json:
        write_file(
            name = "_{}_expected".format(name),
            out = "{}.expected.json".format(name),
            content = [json.encode(expected_json)],
        )
    elif expected_text:
        write_file(
            name = "_{}_expected".format(name),
            out = "{}.expected.json".format(name),
            content = expected_text + [
                "", # trailing newline in actual output
            ],
        )
    else:
        fail("one of expected_text or expected_json should be set")

    jq(
        name = "_{}.run".format(name),
        srcs = ["_{}.input_{}.json".format(name, i) for i in range(0, len(inputs))],
        args = args,
        filter_file = filter_file,
        out = "{}.actual.json".format(name),
    )

    rule = assert_json_matches if expected_json else diff_test
    
    rule(
        name = name,
        file1 = "{}.actual.json".format(name),
        file2 = "{}.expected.json".format(name),
    )
