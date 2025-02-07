module top(a, b, c, d, e, clk, y);
  input [7:0] a, b, c, d, e;
  input clk;
  output [31:0] y;
  wire [15:0] w1,w2;
  wire [31:0] w3;
  
  sum sumab(.in1(a), .in2(b), .clk(clk), .out(w1));
  sum sumcd(c, d, clk, w2);
  mul mul(w1, w2, clk, w3);
  div div(w3, e, clk, y);
endmodule 