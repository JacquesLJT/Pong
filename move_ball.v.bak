module move_ball(
	input pixel_clk,
	input [9:0] X_pix, Y_pix,
	input [9:0] P1_paddle_x_location,
	input [9:0] P1_paddle_y_location,
	input [9:0] P2_paddle_x_location,
	input [9:0] P2_paddle_y_location,
	output [9:0] new_ball_x_location,
	output [9:0] new_ball_y_location
);

	localparam H_ACTIVE = 640;
	localparam V_ACTIVE = 480;
	localparam ball_width = 5;
	localparam ball_height = 5;
	localparam paddle_width = 10;
	localparam paddle_height = 120;

	integer x_direction = 1, y_direction = 1;
	
	reg [9:0] x_ball, y_ball;
	
	always @(posedge pixel_clk)
	begin
		
		/*if(!reset)
		begin
			x_ball <= H_ACTIVE/2;
			y_ball <= V_ACTIVE/2;
		end*/

			//Bouncing off the edges
			if (y_ball == (ball_height/2) + 1)
				y_direction = y_direction*-1;
			if (y_ball == (V_ACTIVE-(ball_height/2)-1))
				y_direction = y_direction*-1;
				
			//Collision with the paddles
			if (x_ball < (P1_paddle_x_location + ball_width/2) && y_ball > (P1_paddle_y_location - paddle_height/2) && y_ball < (P1_paddle_y_location + paddle_height/2))
				x_direction = x_direction * -1;
			if (x_ball > (P2_paddle_x_location - ball_width/2) && y_ball > (P2_paddle_y_location - paddle_height/2) && y_ball < (P2_paddle_y_location + paddle_height/2))
				x_direction = x_direction * -1;
				
			if (x_ball == (H_ACTIVE - ball_width/2))
			begin
				x_ball <= H_ACTIVE/2;
				y_ball <= V_ACTIVE/2;
				y_direction = y_direction * -1;
				x_direction = x_direction * -1;
			end
			
			else if (x_ball == 0)
			begin
				x_ball <= H_ACTIVE/2;
				y_ball <= V_ACTIVE/2;
				y_direction = y_direction * -1;
				x_direction = x_direction * -1;
			end
			
			else
			begin
					x_ball <= x_ball + x_direction;
					y_ball <= y_ball + y_direction;
			end
			
		/*end
		
		else
			begin
				x_ball <= x_ball;
				y_ball <= y_ball;
			end*/
	end
	
	assign new_ball_x_location = x_ball;
	assign new_ball_y_location = y_ball;

endmodule
