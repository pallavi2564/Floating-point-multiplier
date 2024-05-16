`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 18:33:17
// Design Name: 
// Module Name: vedic3
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


module vedic3(input [2:0]a,input [2:0]b,output [5:0]s);

wire [7:0]p;
wire c0;
wire s1,c1,c2,s3,c3,c4,s4,s5,c5;
andgate a0(a[0],b[0],s[0]);
andgate a1(a[1],b[0],p[0]);
andgate a2(a[0],b[1],p[1]);
andgate a3(a[0],b[2],p[2]);
andgate a4(a[1],b[1],p[3]);
andgate a5(a[2],b[0],p[4]);
andgate a6(a[2],b[1],p[5]);
andgate a7(a[1],b[2],p[6]);
andgate a8(a[2],b[2],p[7]);

ha h1(p[0],p[1],s[1],c0);
fa f1(p[2],p[3],p[4],s1,c1);
bitadder_2 b1(c1,s1,1'b0,c0,s4,s[2],c2);
ha h2(p[5],p[6],s3,c3);
bitadder_2 b2(c3,s3,c2,s4,s5,s[3],c4);
bitadder_2 b3(1'b0,p[7],c4,s5,s[5],s[4],c5);
endmodule
