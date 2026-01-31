const std = @import("std");
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();
    var ans: u8 = undefined;
    try std.posix.getrandom(std.mem.asBytes(&ans));
    ans %= 101;
    var count: u8 = 1;
    while (true) {
        try stdout.print("Guess the number from 1 to 100: ", .{});
        var guess: [4]u8 = undefined;
        const slice = try stdin.readUntilDelimiter(&guess, '\n');
        const trimmed = std.mem.trim(u8, slice, " \r\n");
        const guessu8 = try std.fmt.parseInt(u8, trimmed, 10);
        if (guessu8 < ans) {
            try stdout.print("Too low!\n", .{});
        } else if (guessu8 > ans) {
            try stdout.print("Too high\n", .{});
        } else {
            try stdout.print("Correct!\n Guesses taken: {d}\n", .{count});
            break;
        }
        count += 1;
    }
}
