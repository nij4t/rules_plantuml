# Bazel PlantUML Rules

## WORKSPACE

```
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
  name = "rules_plantuml",
  commit = "6d663a1dfd9c70d8043970dee72ef5771b211e94",
  remote = "https://github.com/nij4t/rules_plantuml.git",
)

load("@rules_plantuml//:repositories.bzl", "repositories")

repositories()

```

## BUILD

```
load("@rules_plantuml//:rules.bzl", "plantuml")

plantuml(
  name = "bar",
  format = "svg",
  srcs =["foo.puml"],
)
```

