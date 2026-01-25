// WORK IN PROGRESS

const std = @import("std");

pub fn main() !void {
  var g = std.rand.DefaultPrng.init(std.time.nanoTimestamp());
  const ans = try g.randomInt(0, 101);
  const print = std.fs.File.stdout().writeAll;
  const input = std.fs.File.stdin().reader()
  while (true) {
    const guess = 
    try print("hello world!\n");
  }
}
