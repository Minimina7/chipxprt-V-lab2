`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:32:04 PM
// Design Name: 
// Module Name: adder4bit
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


module adder4bit(
input logic [3:0]a,
input logic [3:0]b,
input logic CIN,
output logic COUT, 
output logic [3:0]s
    );
 

logic c0, c1, c2;

fulladder G1 (.A(a[0]), .B(b[0]), .Cin(CIN), .S(s[0]), .Cout(c0));
fulladder G2 (.A(a[1]), .B(b[1]), .Cin(c0), .S(s[1]), .Cout(c1));
fulladder G3 (.A(a[2]), .B(b[2]), .Cin(c1), .S(s[2]), .Cout(c2));
fulladder G4 (.A(a[3]), .B(b[3]), .Cin(c2), .S(s[3]), .Cout(COUT));

endmodule
