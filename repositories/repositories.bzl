"""Handles import of external/third-party repositories.
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load(
    "@com_github_mvukov_rules_ros2//repositories:ros2_repositories_impl.bzl",
    "ros2_repositories_impl",
)

def ros2_repositories():
    """Imports external/third-party repositories.
    """
    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "c03246c11efd49266e8e41e12931090b613e12a59e6f55ba2efd29a7cb8b4258",
        strip_prefix = "rules_python-0.11.0",
        url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.11.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz"],
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    )

    maybe(
        http_archive,
        name = "ros2_rcutils",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rcutils.BUILD.bazel",
        sha256 = "e69ed32f189ed2078b22b49408f6a12b7f78d83ce5d56bdd1b6cea357ccd7e6e",
        strip_prefix = "rcutils-5.1.1",
        urls = ["https://github.com/ros2/rcutils/archive/5.1.1.tar.gz"],
    )

    maybe(
        native.new_local_repository,
        name = "ros2_rosidl",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl.BUILD.bazel",
        path = "../rosidl",
    )

    # foxy branch.
    # maybe(
    #     new_git_repository,
    #     name = "ros2_rosidl",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl.BUILD.bazel",
    #     remote = "https://github.com/mvukov/rosidl.git",
    #     commit = "611c16181cfa832d2433e77c612bd75e303cca4e",
    # )

    # maybe(
    #     http_archive,
    #     name = "ros2_rosidl",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl.BUILD.bazel",
    #     sha256 = "f431c394d28d926354c271e48b7d45667363309ae63c3c1bcb6275695fbc50b8",
    #     strip_prefix = "rosidl-3.1.3",
    #     urls = ["https://github.com/ros2/rosidl/archive/3.1.3.tar.gz"],
    # )

    maybe(
        http_archive,
        name = "ros2_rmw",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rmw.BUILD.bazel",
        sha256 = "c9ceb20c5579f6a448f802f49b90a5ef300af16dfb1900542c8dda9c41518836",
        strip_prefix = "rmw-6.1.0",
        urls = ["https://github.com/ros2/rmw/archive/6.1.0.tar.gz"],
    )

    # maybe(
    #     native.new_local_repository,
    #     name = "ros2_rcpputils",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rcpputils.BUILD.bazel",
    #     path = "../ros2_foxy/src/ros2/rcpputils",
    # )

    # foxy branch.
    # maybe(
    #     new_git_repository,
    #     name = "ros2_rcpputils",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rcpputils.BUILD.bazel",
    #     remote = "https://github.com/mvukov/rcpputils.git",
    #     commit = "190fe233f9a46de715232fb07d195e5b43b21afe",
    # )

    maybe(
        http_archive,
        name = "ros2_rcpputils",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rcpputils.BUILD.bazel",
        sha256 = "3f7d220c9fd1c508e1c6bb09239a4e007506a8952a81164dc9027c94bff51ed8",
        strip_prefix = "rcpputils-2.4.0",
        urls = ["https://github.com/ros2/rcpputils/archive/2.4.0.tar.gz"],
    )

    # maybe(
    #     native.new_local_repository,
    #     name = "ros2_rmw_implementation",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rmw_implementation.BUILD.bazel",
    #     path = "../ros2_foxy/src/ros2/rmw_implementation",
    # )

    # foxy branch.
    # maybe(
    #     new_git_repository,
    #     name = "ros2_rmw_implementation",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rmw_implementation.BUILD.bazel",
    #     remote = "https://github.com/mvukov/rmw_implementation.git",
    #     commit = "026462a1aac90352c67ba38b62652129144c821b",
    # )

    maybe(
        http_archive,
        name = "ros2_rmw_implementation",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rmw_implementation.BUILD.bazel",
        sha256 = "b3cb9755b00cd60839dc78711ef14de163234a72bd8cb679812c45ca3608e40b",
        strip_prefix = "rmw_implementation-2.8.1",
        url = "https://github.com/ros2/rmw_implementation/archive/2.8.1.tar.gz",
    )

    maybe(
        http_archive,
        name = "fmt",
        build_file = "@com_github_mvukov_rules_ros2//repositories:fmt.BUILD.bazel",
        sha256 = "5cae7072042b3043e12d53d50ef404bbb76949dad1de368d7f993a15c8c05ecc",
        strip_prefix = "fmt-7.1.3",
        url = "https://github.com/fmtlib/fmt/archive/7.1.3.tar.gz",
    )

    maybe(
        http_archive,
        name = "spdlog",
        build_file = "@com_github_mvukov_rules_ros2//repositories:spdlog.BUILD.bazel",
        sha256 = "944d0bd7c763ac721398dca2bb0f3b5ed16f67cef36810ede5061f35a543b4b8",
        strip_prefix = "spdlog-1.8.5",
        url = "https://github.com/gabime/spdlog/archive/v1.8.5.tar.gz",
    )

    maybe(
        http_archive,
        name = "ros2_rcl_logging",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rcl_logging.BUILD.bazel",
        sha256 = "004b716574e3bc8d0172c5b3d410e5fa12af92515e1cfae05f060287d2e782c9",
        strip_prefix = "rcl_logging-2.4.0",
        urls = ["https://github.com/ros2/rcl_logging/archive/2.4.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "libyaml",
        build_file = "@com_github_mvukov_rules_ros2//repositories:libyaml.BUILD.bazel",
        sha256 = "2c103fc473e904c6fe7580277f1fa16b6d716e54d5e3f32a8913c4850ae03b3f",
        strip_prefix = "libyaml-acd6f6f014c25e46363e718381e0b35205df2d83",
        urls = ["https://github.com/yaml/libyaml/archive/acd6f6f014c25e46363e718381e0b35205df2d83.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_rcl",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rcl.BUILD.bazel",
        sha256 = "4c5a10e60f69da9a8dd5c449f4d6e5d240a618d0c06809ed3fc9568d7cbe2a1f",
        strip_prefix = "rcl-5.3.1",
        urls = ["https://github.com/ros2/rcl/archive/5.3.1.tar.gz"],
        repo_mapping = {"@libyaml" : "@libyaml-0.2.5"},
    )

    maybe(
        http_archive,
        name = "ros2_tracing",
        build_file = "@com_github_mvukov_rules_ros2//repositories:ros2_tracing.BUILD.bazel",
        sha256 = "e4c29a8d281bae9c20cb3856b59dd30675a441ecfa2f617d5b3e71f763b99504",
        strip_prefix = "ros2_tracing-4.1.0-d8e43ab8bb62ad99b67d3fb7a371d9bba9933312",
        urls = ["https://gitlab.com/ros-tracing/ros2_tracing/-/archive/4.1.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_rcl_interfaces",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rcl_interfaces.BUILD.bazel",
        sha256 = "8cd49ce722124b4385f338333f4c912786f2f4d1d687dfc0f508647b4603fbb1",
        strip_prefix = "rcl_interfaces-1.2.0",
        urls = ["https://github.com/ros2/rcl_interfaces/archive/1.2.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_rclcpp",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rclcpp.BUILD.bazel",
        sha256 = "88efccf847f9e5c698773d7b64a2ef6eb95e455f091356470a17692a596b025c",
        strip_prefix = "rclcpp-16.0.1",
        urls = ["https://github.com/ros2/rclcpp/archive/16.0.1.tar.gz"],
    )

    # maybe(
    #     native.new_local_repository,
    #     name = "ros2_rosidl_typesupport",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl_typesupport.BUILD.bazel",
    #     path = "../ros2_foxy/src/ros2/rosidl_typesupport",
    # )

    # foxy branch.
    maybe(
        http_archive,
        name = "ros2_rosidl_typesupport",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl_typesupport.BUILD.bazel",
        strip_prefix = "rosidl_typesupport-2.0.0",
        urls = ["https://github.com/ros2/rosidl_typesupport/archive/2.0.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_libstatistics_collector",
        build_file = "@com_github_mvukov_rules_ros2//repositories:libstatistics_collector.BUILD.bazel",
        sha256 = "25a28787c6c616038bf4425a561e53dc92a3d315de4cf00d030f18edde2774c6",
        strip_prefix = "libstatistics_collector-1.2.0",
        urls = ["https://github.com/ros-tooling/libstatistics_collector/archive/1.2.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_common_interfaces",
        build_file = "@com_github_mvukov_rules_ros2//repositories:common_interfaces.BUILD.bazel",
        sha256 = "d64fa2bbc6f26edf3b4f610fed98f0f1e71dbeea939daf73fb825436991d0388",
        strip_prefix = "common_interfaces-4.2.1",
        urls = ["https://github.com/ros2/common_interfaces/archive/4.2.1.tar.gz"],
    )

    # maybe(
    #     http_archive,
    #     name = "cyclonedds",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:cyclonedds.BUILD.bazel",
    #     sha256 = "b4488c641f914e8c51827dc50151edc1ffd915a53ed0f61c25f74d249267627d",
    #     strip_prefix = "cyclonedds-457a07132d394e6461ca23a5c27ddaefbb8ab868",
    #     urls = ["https://github.com/eclipse-cyclonedds/cyclonedds/archive/457a07132d394e6461ca23a5c27ddaefbb8ab868.tar.gz"],
    # )

    maybe(
        native.new_local_repository,
        name = "cyclonedds",
        build_file = "@com_github_mvukov_rules_ros2//repositories:cyclonedds.BUILD.bazel",
        path= "/home/liyou/work/cyclonedds"
    )

    maybe(
        http_archive,
        name = "ros2_rmw_dds_common",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rmw_dds_common.BUILD.bazel",
        sha256 = "85dd9f586d53b658e5389a388fe3d99a884ba06f567a59f9908ecb96e29132ef",
        strip_prefix = "rmw_dds_common-1.6.0",
        urls = ["https://github.com/ros2/rmw_dds_common/archive/1.6.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_rmw_cyclonedds",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rmw_cyclonedds.BUILD.bazel",
        sha256 = "34cfa12ea2653af166412224aac5d28010a0e1f74a3609e1bd4136a7a8cdc7c6",
        strip_prefix = "rmw_cyclonedds-1.3.3",
        patch_args = ["-p1"],
        patches = ["@com_github_mvukov_rules_ros2//repositories/patches:rmw_cyclonedds-fix-typesupport-conditions-bug.patch"],
        urls = ["https://github.com/ros2/rmw_cyclonedds/archive/1.3.3.tar.gz"],
    )

    maybe(
        http_archive,
        name = "ros2_unique_identifier_msgs",
        build_file = "@com_github_mvukov_rules_ros2//repositories:unique_identifier_msgs.BUILD.bazel",
        sha256 = "aa0f5a440cface1dd85cf05d97cadb812b2796973882d02a7e795ae70b64b9a0",
        strip_prefix = "unique_identifier_msgs-2.2.1",
        urls = ["https://github.com/ros2/unique_identifier_msgs/archive/2.2.1.tar.gz"],
    )

    # maybe(
    #     native.new_local_repository,
    #     name = "ros2_rosidl_python",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl_python.BUILD.bazel",
    #     path = "../ros2_foxy/src/ros2/rosidl_python",
    # )

    # feature/bazel branch
    maybe(
        new_git_repository,
        name = "ros2_rosidl_python",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rosidl_python.BUILD.bazel",
        remote = "https://github.com/mvukov/rosidl_python.git",
        commit = "a772648eb135e08bfd2f48da15a86a7fea581622",
    )

    maybe(
        http_archive,
        name = "ros2_rpyutils",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rpyutils.BUILD.bazel",
        sha256 = "8b321fd04ffc65b7be2e8d6e4dde6e632bac291021dc5adc67077c9cac601243",
        strip_prefix = "rpyutils-0.2.0",
        urls = ["https://github.com/ros2/rpyutils/archive/0.2.0.tar.gz"],
    )

    # maybe(
    #     native.new_local_repository,
    #     name = "ros2_rclpy",
    #     build_file = "@com_github_mvukov_rules_ros2//repositories:rclpy.BUILD.bazel",
    #     path = "../ros2_foxy/src/ros2/rclpy",
    # )

    # feature/bazel branch
    maybe(
        new_git_repository,
        name = "ros2_rclpy",
        build_file = "@com_github_mvukov_rules_ros2//repositories:rclpy.BUILD.bazel",
        remote = "https://github.com/mvukov/rclpy.git",
        commit = "677e67f4a50469591e436f9919ceae0bd870f9eb",
    )

    # ros2-devel branch
    maybe(
        http_archive,
        name = "ros2_gps_umd",
        build_file = "@com_github_mvukov_rules_ros2//repositories:gps_umd.BUILD.bazel",
        sha256 = "64a96f93053d0d59e8fcccceab5408a7d666dd813d4c12df139ef24d916f49ab",
        strip_prefix = "gps_umd-fc782811804fafb12ee479a48a2aa2e9ee942e2d",
        urls = ["https://github.com/swri-robotics/gps_umd/archive/fc782811804fafb12ee479a48a2aa2e9ee942e2d.tar.gz"],
    )
