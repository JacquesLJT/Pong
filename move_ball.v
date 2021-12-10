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
	reg [9:0] P2_y;
	
	always @(posedge clk)
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

`timescale 10ns / 1ps
module testbench ();
	
	reg clk ;
	reg reset;
	reg [9:0] P1_paddle_x_location;
	reg [9:0] P1_paddle_y_location;
	reg [9:0] P2_paddle_x_location;
	reg [9:0] P2_paddle_y_location;
	wire [9:0] new_ball_x_location;
	wire [9:0] new_ball_y_location;
	wire [9:0] P2_location;
	wire [3:0] P1_score;
	wire [3:0] P2_score;
	
	move_ball testball(
		clk,
		reset,
		P1_paddle_x_location, 
		P1_paddle_y_location, 
		P2_paddle_x_location, 
		P2_paddle_y_location, 
		new_ball_x_location, 
		new_ball_y_location, 
		P2_location,
		P1_score,
		P2_score
	);
	
	initial
	begin
		
		P1_paddle_x_location <= 20;
		P1_paddle_y_location <= 220;
		P2_paddle_x_location <= 618;
		P2_paddle_y_location <= 220;
		reset <= 1;
		clk <= 0;
		#20 reset <= 0;
		#20 P1_paddle_y_location <= 160;
		#20 P2_paddle_y_location <= 200;
		
	end
	
	always #5 clk = ~clk;
		
endmodule
