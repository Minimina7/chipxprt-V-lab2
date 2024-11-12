`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:23:20 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
    logic s1, c1, c2;
 

halfadder add1( .S(s1), .C(c1) , .A(A) , .B(B) );
halfadder add2( .S(S), .C(c2) , .A(s1) , .B(Cin) );
or check_carry( Cout, c1 , c2);
    
endmodule
