module or_gate(a, b, y);
input a, b;
output y;
or org(y, a, b );
endmodule

module testor;
reg a, b;
wire y;
or_gate org(a, b, y);
initial
begin
	$dumpfile("test1.vcd");
	$dumpvars(0,testor);
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
