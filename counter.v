module counter_behav(count,rst,clk);
input rst,clk;
output reg[2:0]count;
always @ (posedge(clk))
if(rst)
count<=3'b000;
else
count<=count+1;
endmodule

module testmod;
reg r,c;
wire [2:0]ct;
counter_behav countbeh(ct,r,c);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,testmod);
r = 1;
c = 0;
#50 r = 0;
#200 $finish;
end
always #5 c = ~c;
endmodule