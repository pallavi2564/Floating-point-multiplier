`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 18:29:38
// Design Name: 
// Module Name: fp_tb
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


module fp_tb;
    
     reg [31:0]a,b;
     wire [31:0]p;
     
   fp uut(.a(a),.b(b),.p(p));
   initial begin
     
       a=0;b=0;
       
        #10 a=32'h4234851F;b=32'h427C851F;
        #10 a=32'h4049999A;b=32'hC1663D71;
        #10 a=32'h45800000;b=32'h45800000;
        #10 a=32'hC1526666;b=32'h00000000;
        #10 a=32'hC19C0000;b=32'h41080000;
        #10 a=32'hC2980000;b=32'h423B51EC;
        #10 a=32'hC148F5C3;b=32'h409CCCCD;
   end
   
   initial begin
   $monitor("time:%g a=%d  b=%d p=%d ",$time,a,b,p);
   #70 $finish;
   end

endmodule
