module and_or(a, b, c, d, y);
	input a, b, c, d;
	output y;
	/*
	wire p, q;
	and g1(p, a, b);			//This approach will also work
	and g2(q, c, d);			//But it creates 2 additional wires
	or g3(y, p, q);
	*/
	assign y = (a&b) | (c&d);
endmodule

module test;
	reg a, b, c, d;
	wire y;
	and_or gate(a, b, c, d, y);
	initial
	begin
			$dumpfile("and_or.vcd");
			$dumpvars(0, test);
			a = 0; b = 0; c = 0; d = 0;
			#20
			a = 0; b = 0; c = 0; d = 1;
			#20
			a = 0; b = 0; c = 1; d = 0;
			#20
			a = 0; b = 0; c = 1; d = 1;
			#20
			a = 0; b = 1; c = 0; d = 0;
			#20
			a = 0; b = 1; c = 0; d = 1;
			#20
			a = 0; b = 1; c = 1; d = 0;
			#20
			a = 0; b = 1; c = 1; d = 1;
			#20
			a = 1; b = 0; c = 0; d = 0;
			#20
			a = 1; b = 0; c = 0; d = 1;
			#20
			a = 1; b = 0; c = 1; d = 0;
			#20
			a = 1; b = 0; c = 1; d = 1;
			#20
			a = 1; b = 1; c = 0; d = 0;
			#20
			a = 1; b = 1; c = 0; d = 1;
			#20
			a = 1; b = 1; c = 1; d = 0;
			#20
			a = 1; b = 1; c = 1; d = 1;
			#20
			$finish;
	end
	endmodule