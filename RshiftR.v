module Rshift(input clk, input clrb, input SDR,output reg [3:0]Q);
always @ (posedge(clk),negedge(clrb))
if(~clrb) Q<=4'b0000;
else
Q<={SDR,Q[3:1]};
endmodule

module testshift;
reg clk, clrb,SDR;
wire [3:0]Q;

Rshift RS(clk,clrb,SDR, Q);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,testshift);

clk = 1;
clrb = 0;
SDR = 1;
#10
clrb = 1;
#10
SDR = 0;
#20 $finish;
end
always #5 clk=~clk;
endmodule
