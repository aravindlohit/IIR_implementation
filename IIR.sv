module IIR( input clk,reset, input  bit [4:0] a, output bit [4:0] y);

  reg [3:0] y_val;
  braugh_mult(

  always @(posedge clk)
    begin
  if(reset)
    y<=0;
  else
    y_val <= a + braugh_prod[3:0];
  
    end
  
