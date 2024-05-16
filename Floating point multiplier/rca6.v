`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 11:41:33
// Design Name: 
// Module Name: rca6
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


module rca6(a,b,cin,s,cout);  
input [5:0]a,b;    
input cin;
output [5:0]s;
output cout;
wire c0,c1,c2,c3,c4;

fa x0(a[0],b[0],cin,s[0],c0);
fa x1(a[1],b[1],c0,s[1],c1);
fa x2(a[2],b[2],c1,s[2],c2);
fa x3(a[3],b[3],c2,s[3],c3);
fa x4(a[4],b[4],c3,s[4],c4);
fa x5(a[5],b[5],c4,s[5],cout);


endmodule
