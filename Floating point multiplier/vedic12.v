`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:11:49
// Design Name: 
// Module Name: vedic12
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


module vedic12(input [11:0]a,input [11:0]b,output [23:0]s);

wire [11:0]s1,s2,s3,s4,s5,s6,s7;
 wire c1,c2,c3,p,q;
 vedic6 v1(a[5:0],b[5:0],s1);
 vedic6 v2(a[5:0],b[11:6],s2);
 vedic6 v3(a[11:6],b[5:0],s3);
 vedic6 v4(a[11:6],b[11:6],s4);
 rca12 r1(s2,s3,1'b0,s5,c1);
 rca12 r2(s5,{6'b0,s1[11:6]},1'b0,s6,c2);
 ha h6(c1,c2,p,q);
 rca12 r3(s4,{4'b0,q,p,s6[11:6]},1'b0,s7,c3);
 
 assign s[5:0]=s1[5:0];
 assign s[11:6]=s6[5:0];
 assign s[23:12]=s7;
endmodule
