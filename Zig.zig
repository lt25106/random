// STILL WORK IN PROGRESS

const std = @import("std");

pub fn main() !void {
    const stdin_file = std.fs.File.stdin();
    
    // 1. Get the reader (requires a buffer slice)
    var br = stdin_file.reader(&.{});
    
    // 2. Get the generic interface, then call .any() to get the helper methods
    const stdin = br.interface.any();

    // Generate random answer
    var ans: u64 = undefined;
    try std.posix.getrandom(std.mem.asBytes(&ans));
    ans %= 101;

    while (true) {
        var input: [32]u8 = undefined;
        std.debug.print("Guess a number between 0 and 100: ", .{});

        // 3. Now readUntilDelimiterOrEof is available on the .any() object
        if (try stdin.readUntilDelimiterOrEof(&input, '\n')) |line| {
            const trimmed = std.mem.trim(u8, line, " \r\n");
            if (trimmed.len == 0) continue;

            const number = std.fmt.parseInt(u64, trimmed, 10) catch {
                std.debug.print("Invalid number!\n", .{});
                continue;
            };

            if (number == ans) {
                std.debug.print("Correct! The answer was {d}.\n", .{ans});
                break;
            } else if (number < ans) {
                std.debug.print("Too low!\n", .{});
            } else {
                std.debug.print("Too high!\n", .{});
            }
        }
    }
}