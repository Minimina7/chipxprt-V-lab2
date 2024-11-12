`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:10:48 PM
// Design Name: 
// Module Name: tb-halfadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_halfadder;

logic a, b;
logic c, s;

halfadder dut (
.A(a),
.B(b),
.C(c),
.S(s)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t c\t s");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, c , s);

a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, c , s);

a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, c , s);

a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, c , s);
// End simulation
$finish;    #10;
end
endmodule

