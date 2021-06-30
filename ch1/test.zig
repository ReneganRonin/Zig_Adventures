// Imports
const std = @import("std");
const expect = std.testing.expect;
const print = std.debug.print;

// declaring variables
// const -> immutable
// var -> mutable
pub fn main() void {
    const constant: i32 = 5; // signed 32-bit constant
    var variable: u32 = 5000; // unsigned 32-bit variable
    print("Constant: {}!\n", .{constant});
    print("Variable: {}!\n", .{variable});
}

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try expect(x == 1);
}

test "while" {
    var i: u8 = 2;
    while (i < 100) {
        i *= 2;
    }
    try expect(i == 128);
}
