module gates(input a,b,output [2:0]y);
assign y[2] = a&b;
assign y[1] = a|b;
assign y[0] = ~a;
endmodule

module testgate;
wire [2:0]y;
reg a,b;
gates dut(.y(y),.a(a),.b(b));
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,testgate);
a = 1'b0;
b = 1'b0;
#50;
a = 1'b0;
b = 1'b1;
#50;
a = 1'b1;
b = 1'b0;
#50;
a = 1'b1;
b = 1'b1;
#50;
end
endmodule