`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 10:28:52
// Design Name: 
// Module Name: bitadder_2
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


module bitadder_2(a1,a0,b1,b0,s1,s0,c

    );
 input a1,a0,b1,b0;
 output s1,s0,c;
 wire ca;
 ha h6(a0,b0,s0,ca);
 fa f4(a1,b1,ca,s1,c);
endmodule
