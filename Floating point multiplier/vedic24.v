`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:32:12
// Design Name: 
// Module Name: vedic24
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

module vedic24(input [23:0]a,input [23:0]b,output [47:0]s);

wire [23:0]s1,s2,s3,s4,s5,s6,s7;
 wire c1,c2,c3,p,q;
 vedic12 v1(a[11:0],b[11:0],s1);
 vedic12 v2(a[11:0],b[23:12],s2);
 vedic12 v3(a[23:12],b[11:0],s3);
 vedic12 v4(a[23:12],b[23:12],s4);
 rca24 r1(s2,s3,1'b0,s5,c1);
 rca24 r2(s5,{12'b0,s1[23:12]},1'b0,s6,c2);
 ha h6(c1,c2,p,q);
 rca24 r3(s4,{10'b0,q,p,s6[23:12]},1'b0,s7,c3);
 
 assign s[11:0]=s1[11:0];
 assign s[23:12]=s6[11:0];
 assign s[47:24]=s7;
endmodule

