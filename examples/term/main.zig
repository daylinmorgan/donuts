const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(.{ .style = .dots });
    try sp.start("Scanning files...");

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("1) build.zig");

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("2) build.zig.zon");

    std.time.sleep(1 * std.time.ns_per_s);

    try sp.echoLine("3) README.md");
    try sp.stop(.{ .symbol = "✅", .message = "Done" });
}
