

module fsm_shift(clk,clr,in,result,seq);

input clk,clr,in;
input [N:0]seq;
output reg result;
reg [N:0]temp;
parameter N = 5;
always @(posedge clk)
 begin
 if(!clr)
   temp <= 6'd0;
 else
   temp <= {temp[N-1:0] , in};
 end
always @(temp)
  if(temp == seq)
    result <= 1'b1;
  else
    result <= 1'b0;
endmodule