module mux4to1(a, b, c, d, sel1, sel2, y);
	input a, b, c, d, sel1, sel2;
	output y;
	/*
	wire and1, and2, and3, and4;
	and g1(and1, a, ~sel1, ~sel2);
	and g1(and2, b, ~sel1, sel2);
	and g1(and3, c, sel1, ~sel2);
	and g1(and4, d, sel1, sel2);
	or g5(y, and1, and2, and3, and4);
	*/
	assign y = (a & ~sel1 & ~sel2)|(b & ~sel1 & sel2)|(c & sel1 & ~sel2)|(d & sel1 & sel2);
endmodule

module test;
	reg a, b, c, d, sel1, sel2;
	wire y;
	mux4to1 mg(a, b, c, d, sel1, sel2, y);
	initial
	begin
		$dumpfile("mux4to1.vcd");
		$dumpvars(0, test);
		a = 0; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 0;
		#20
		a = 1; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 0;
		#20
		a = 0; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 1;
		#20
		a = 0; b = 1; c = 0; d = 0; sel1 = 0; sel2 = 1;
		#20
		a = 0; b = 0; c = 0; d = 0; sel1 = 1; sel2 = 0;
		#20
		a = 0; b = 0; c = 1; d = 0; sel1 = 1; sel2 = 0;
		#20
		a = 0; b = 0; c = 0; d = 0; sel1 = 1; sel2 = 1;
		#20
		a = 0; b = 0; c = 0; d = 1; sel1 = 1; sel2 = 1;
		#20
		$finish;
	end
endmodule