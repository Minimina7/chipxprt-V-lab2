`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:30:04 PM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder;

logic a, b, cin;
logic cout, s;

fulladder dut (
.A(a),
.B(b),
.Cin(cin),
.Cout(cout),
.S(s)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t Cin\t S\t Cout");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 0; b = 0; cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 0; b = 1; cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 0; b = 1; cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 1; b = 0; cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 1; b = 0; cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 1; b = 1; cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

a = 1; b = 1; cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t\t %b\t\t %b", $time, a, b, cin, s, cout);

// End simulation
$finish;    #10;
end
endmodule
