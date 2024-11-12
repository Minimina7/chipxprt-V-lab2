`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:16:07 PM
// Design Name: 
// Module Name: addsub4bit
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


module addsub4bit(
input logic [3:0]a,
input logic [3:0]b,
input logic CIN,
input logic m,
output logic COUT, 
output logic [3:0]s
    );
 


logic c1, c2, c3, w1, w2, w3, w4;

xor g1 (w1, m, b[0]);
xor g2 (w2, m, b[1]);
xor g3 (w3, m, b[2]);
xor g4 (w4, m, b[3]);


fulladder G1 (.A(a[0]), .B(w1), .Cin(CIN), .S(s[0]), .Cout(c0));
fulladder G2 (.A(a[1]), .B(w2), .Cin(c0), .S(s[1]), .Cout(c1));
fulladder G3 (.A(a[2]), .B(w3), .Cin(c1), .S(s[2]), .Cout(c2));
fulladder G4 (.A(a[3]), .B(w4), .Cin(c2), .S(s[3]), .Cout(COUT));
endmodule
