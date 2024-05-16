`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:25:07
// Design Name: 
// Module Name: rca12
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


module rca12(a,b,cin,s,cout);
input [11:0]a,b;
input cin;
output [11:0]s;
output cout;
wire c1;
rca6 r3(a[5:0],b[5:0],cin,s[5:0],c1);
rca6 r4(a[11:6],b[11:6],c1,s[11:6],cout);
endmodule
