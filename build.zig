const std = @import("std");

pub fn build(b: *std.Build) void {
    // const target = b.standardTargetOptions(.{});
    // const optimize = b.standardOptimizeOption(.{});

    _ = b.addModule("lodepng", .{ .root_source_file = .{ .path = "lodepng.c" }, .link_libc = true, .link_libcpp = true });
}
