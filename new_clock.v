module new_clock(
	input clk,
	output slow_clock
);
reg[27:0] i = 0;
always @(posedge clk)
	begin
		if (i == 125000)
		begin
			i <= 0;
			slow_clock = ~slow_clock;
		end
		else i <= i+1;
	end
endmodule 