module sum(in1, in2, clk, out);
  input [7:0] in1,in2;
  input clk;
  output reg [15:0] out;

  always @(posedge clk)
   begin
	out = in1 + in2;
   end 
endmodule 