load( "@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

def repositories():
    http_jar(
        name = "plantuml_jar",
        url = "https://github.com/plantuml/plantuml/releases/download/v1.2023.1/plantuml-1.2023.1.jar",
        sha256 = "6fc8c947c14a69a7c9be54a42bb012dfe286555edf7c346384cc35c256df4b3e",
    )

