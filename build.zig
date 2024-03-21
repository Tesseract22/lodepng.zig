const std = @import("std");

pub fn build(b: *std.Build) void {
    // const target = b.standardTargetOptions(.{});
    // const optimize = b.standardOptimizeOption(.{});
    const mod = b.addModule("lodepng", .{ .root_source_file = .{ .path = "c.zig" }, .link_libc = true, .link_libcpp = true });
    mod.addIncludePath(.{ .path = "." });
    mod.addCSourceFile(.{ .file = .{ .path = "lodepng.c" } });
}
