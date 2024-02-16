load(
  "//tools/workspace/rgerganov_footswitch:repository.bzl", "rgerganov_footswitch_repository",
)

def add_default_repositories():
    rgerganov_footswitch_repository(name = "rgerganov_footswitch")
