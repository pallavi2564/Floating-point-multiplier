`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 10:14:48
// Design Name: 
// Module Name: fp
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


module fp(input [31:0]a, input [31:0]b, output [31:0]p);
  wire [23:0] m1, m2;
  wire [47:0] w;
  wire [7:0] e1, e2,E;
  reg [47:0] shifted_product;
  wire c;
  reg did_shift;
  reg [8:0] e;
  reg [31:0] q;

  assign m1 = {1'b1, a[22:0]};
  assign m2 = {1'b1, b[22:0]};
  vedic24 v4(m1, m2, w);

  assign e1 = a[30:23];
  assign e2 = b[30:23];
  rca8 r11(e1, e2, 1'b0, E,c );

  always @(*) begin
    if (a == 0 || b == 0) begin
      q = 32'b0;
    end 
    else begin
      
      e = e1 + e2 - 8'd127;
      shifted_product[47:0]= w;
      did_shift = w[47]? 1'b0:1'b1;
     
      shifted_product= shifted_product[47] ? shifted_product :shifted_product << 1;
              
             
  q[22:0] = did_shift ? shifted_product[46:24] : w[46:24];
            
    if (q[22:0]==w[46:24])
     begin 
       e=e+1;
     end
     q[31] = a[31] ^ b[31];
    q[30:23] = e[7:0];
  end
end

assign p = q;
endmodule
      