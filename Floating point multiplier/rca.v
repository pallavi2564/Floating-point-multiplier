`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 10:30:16
// Design Name: 
// Module Name: rca
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

module rca(a,b,cin,s,cout);  
input [3:0]a,b;    
input cin;
output [3:0]s;
output cout;
wire c0,c1,c2;

fa x0(a[0],b[0],cin,s[0],c0);
fa x1(a[1],b[1],c0,s[1],c1);
fa x2(a[2],b[2],c1,s[2],c2);
fa x3(a[3],b[3],c2,s[3],cout);

endmodule
