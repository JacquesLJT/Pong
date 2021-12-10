module Paddle_input(
	input BUTTON0,
	input BUTTON1,
	input clk,
	input reset,
	input [9:0] P1_paddle_y_location,
	output [9:0] P1_paddle_y_newlocation
);
localparam VS = 480;
localparam HS = 640;
localparam height = 120;
localparam width = 10;
reg [9:0] P1_paddle_y;
always @(posedge clk or negedge reset)
	begin
		if(!reset)
			begin
				P1_paddle_y <= 180;
			end
		else
			begin
				if(!BUTTON0 && ((P1_paddle_y + (height))<VS))
					begin
						P1_paddle_y <= P1_paddle_y + 1;
					end
				else if(!BUTTON1 && P1_paddle_y >0)
					begin
						P1_paddle_y <= P1_paddle_y - 1;
					end
				else begin P1_paddle_y <= P1_paddle_y;
				end
			end
	end
assign P1_paddle_y_newlocation = P1_paddle_y;
endmodule 