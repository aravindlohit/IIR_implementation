module IIR( input clk,reset, input  bit [4:0] a,x, output bit [4:0] y);

  reg [3:0] y_val;
  wire [7:0] braugh_multiplier;
  braugh_mult bm1(.a(a), .b(y_val), .p(braugh_multiplier));

  always @(posedge clk)
    begin
  if(reset)
    y<=x;
  else
    y_val <= a + braugh_prod[3:0];
  
    end
assign y = y_val;  
endmodule
