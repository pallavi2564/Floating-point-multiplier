`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:38:47
// Design Name: 
// Module Name: rca24
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

module rca24(a,b,cin,s,cout);
input [23:0]a,b;
input cin;
output [23:0]s;
output cout;
wire c1;
rca12 r3(a[11:0],b[11:0],cin,s[11:0],c1);
rca12 r4(a[23:12],b[23:12],c1,s[23:12],cout);
endmodule
