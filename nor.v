module nor_gate(a, b, y);
input a, b;
output y;
nor norg(y, a, b );
endmodule

module testnor;
reg a, b;
wire y;
nor_gate norg(a, b, y);
initial
begin
	$dumpfile("test1.vcd");
	$dumpvars(0,testnor);
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
