`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 11:11:17
// Design Name: 
// Module Name: vedic6
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


module vedic6(input [5:0]a,input [5:0]b,output [11:0]s

    );
  wire [5:0]s1,s2,s3,s4,s5,s6,s7;
  wire c1,c2,c3,p,q;
 vedic3 v1(a[2:0],b[2:0],s1);
 vedic3 v2(a[2:0],b[5:3],s2);
 vedic3 v3(a[5:3],b[2:0],s3);
 vedic3 v4(a[5:3],b[5:3],s4);
 rca6 r1(s2,s3,1'b0,s5,c1);
 rca6 r2(s5,{3'b0,s1[5:3]},1'b0,s6,c2);
 ha h6(c1,c2,p,q);
 rca6 r3(s4,{1'b0,q,p,s6[5:3]},1'b0,s7,c3);
 
 assign s[2:0]=s1[2:0];
 assign s[5:3]=s6[2:0];
 assign s[11:6]=s7;
endmodule
