const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const cham = b.dependency("chameleon", .{ .target = target, .optimize = optimize });

    const m = b.addModule(
        "colored_logger",
        .{
            .root_source_file = .{ .src_path = .{
                .owner = b,
                .sub_path = "src/logger.zig",
            } },
            .optimize = optimize,
            .target = target,
            .imports = &.{.{
                .name = "chameleon",
                .module = cham.module("chameleon"),
            }},
        },
    );

    const project_name = b.option([]const u8, "project_name", "must pass .project_name") orelse @panic("must pass .project_name to the dependency");
    const options = b.addOptions();
    options.addOption([]const u8, "project_name", project_name);
    m.addOptions("conflog", options);
}
