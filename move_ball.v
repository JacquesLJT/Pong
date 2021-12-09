module move_ball(
	input clk, reset,
	input [9:0] X_pix, Y_pix,
	input [9:0] P1_paddle_x_location,
	input [9:0] P1_paddle_y_location,
	input [9:0] P2_paddle_x_location,
	input [9:0] P2_paddle_y_location,
	output [9:0] new_ball_x_location,
	output [9:0] new_ball_y_location,
	output [9:0] P2_location
);

	localparam H_ACTIVE = 640;
	localparam V_ACTIVE = 480;
	localparam ball_width = 5;
	localparam ball_height = 5;
	localparam paddle_width = 10;
	localparam paddle_height = 120;

	integer x_direction = 1, y_direction = 1;
	
	reg [9:0] x_ball, y_ball;
	reg slow_clk = 0;
	reg[27:0] i = 0;
	reg [9:0] P2_y;
	
	always @(posedge clk)
	begin
		if (i == 125000)
		begin
			i <= 0;
			slow_clk = ~slow_clk;
		end
		else i <= i+1;
	end
	
	
	always @(posedge slow_clk)
	begin
			if(!reset)
				begin
					x_ball <= 318;
					y_ball <= 238;
				end
			
			else if(reset)
			begin
				//Bouncing off the edges
				if (y_ball == 2)
					y_direction = y_direction*-1;
				if (y_ball == (V_ACTIVE-ball_height))
					y_direction = y_direction*-1;
				
				//Collision with the paddles
				if (x_ball < (P1_paddle_x_location + 10) && (y_ball > (P1_paddle_y_location)) && (y_ball < (P1_paddle_y_location + paddle_height)))
					x_direction = x_direction * -1;
					
				if (x_ball > (P2_paddle_x_location) && (y_ball > (P2_paddle_y_location)) && (y_ball < (P2_paddle_y_location + paddle_height)))
					x_direction = x_direction * -1;
				
				if (x_ball == (H_ACTIVE))
				begin
					x_ball <= 318;
					y_ball <= 238;
					y_direction = y_direction * -1;
					x_direction = x_direction * -1;
				end
				else if (x_ball == 0)
				begin
					x_ball <= 318;
					y_ball <= 238;
					y_direction = y_direction * -1;
					x_direction = x_direction * -1;
				end
				else
				begin
					x_ball <= x_ball + x_direction;
					y_ball <= y_ball - y_direction;
				end
			end
			else
			begin
				x_ball <= x_ball;
				y_ball <= y_ball;
			end
			
			if (y_ball < 60)
			begin
				P2_y = 0;
			end
			else if (y_ball > 420)
			begin
				P2_y = 360;
			end
			else
			begin
				P2_y = y_ball - 60;
			end
	end
	
	assign P2_location = P2_y;
	assign new_ball_x_location = x_ball;
	assign new_ball_y_location = y_ball;

endmodule
