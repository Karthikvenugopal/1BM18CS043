module nand_gate(a, b, y);
input a, b;
output y;
nand nandg(y, a, b );
endmodule

module testnand;
reg a, b;
wire y;
nand_gate nandg(a, b, y);
initial
begin
	$dumpfile("test.vcd");
	$dumpvars(0,testnand);
	a = 1'b0; b = 1'b0;
	#20
	a = 1'b0; b = 1'b1;
	#20
	a = 1'b1; b = 1'b0;
	#20
	a = 1'b1; b = 1'b1;
	#20
	$finish;
end
endmodule
