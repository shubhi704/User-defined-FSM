
module test;

reg clk,clr,in;
reg [N:0]seq;
wire result;
parameter N = 5;
fsm_shift wer(clk,clr,in,result,seq);

initial
 begin
   clk = 0;
   forever #5 clk = ~clk;
 end

initial
 begin
  #0 seq = 6'd5; 
  #0 clr = 1'b0; 
  #12 clr = 1'b1;
  #0 in =1;
  #10 in=0;
  #10 in =1;
  #10 in=0;
  #10 in =1;
  #10 in=0;
  #10 in =1;
  #10 in=0;
  #10 in=0;
  #10 in =1;
  #10 in=0;
  #10 in =1;
  #10 in=1;
  #10 in =1;
  #10 in=0;
 #10 $finish;
 end
   
initial
 begin
  $dumpfile("fsm_n.vcd");
  $dumpvars;
 
 end
endmodule