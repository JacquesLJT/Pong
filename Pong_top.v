`include "./DE0_VGA.v"

module Pong_top(CLK_50, VGA_BUS_R, VGA_BUS_G, VGA_BUS_B, VGA_HS, VGA_VS);

input	wire			CLK_50;

output	reg	[3:0]		VGA_BUS_R;		//Output Red
output	reg	[3:0]		VGA_BUS_G;		//Output Green
output	reg	[3:0]		VGA_BUS_B;		//Output Blue

output	reg	[0:0]		VGA_HS;			//Horizontal Sync
output	reg	[0:0]		VGA_VS;			//Vertical Sync

reg			[9:0]		X_pix;			//Location in X of the driver
reg			[9:0]		Y_pix;			//Location in Y of the driver

reg			[0:0]		H_visible;		//H_blank?
reg			[0:0]		V_visible;		//V_blank?

wire		[0:0]		pixel_clk;		//Pixel clock. Every clock a pixel is being drawn. 
reg			[9:0]		pixel_cnt;		//How many pixels have been output.

reg			[11:0]		pixel_color;	//12 Bits representing color of pixel, 4 bits for R, G, and B
													//4 bits for Blue are in most significant position, Red in least

//Draw the player one paddle
	wire [9:0] P1_paddle_width = 10;
	wire [9:0] P1_paddle_height = 120;
	wire [9:0] P1_paddle_x_location = 20;
	wire [9:0] P1_paddle_y_location = 20;
	reg P1_paddle;

make_box draw_P1_paddle(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(P1_paddle_width),
	.box_height(P1_paddle_height),
	.box_x_location(P1_paddle_x_location),
	.box_y_location(P1_paddle_y_location),
	.pixel_clk(pixel_clk),
	.box(P1_paddle)
);													
													
//Draw the player two paddle
	wire [9:0] P2_paddle_width = 10;
	wire [9:0] P2_paddle_height = 120;
	wire [9:0] P2_paddle_x_location = 610;
	wire [9:0] P2_paddle_y_location = 20;
	reg P2_paddle;

make_box draw_P2_paddle(
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(P2_paddle_width),
	.box_height(P2_paddle_height),
	.box_x_location(P2_paddle_x_location),
	.box_y_location(P2_paddle_y_location),
	.pixel_clk(pixel_clk),
	.box(P2_paddle)
);													
													
//Draw the top border
	wire [9:0] top_border_width = 640;
	wire [9:0] top_border_height = 2;
	wire [9:0] top_border_x_location = 0;
	wire [9:0] top_border_y_location = 0;
	reg top_border;
	
make_box draw_top_border (
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(top_border_width),
	.box_height(top_border_height),
	.box_x_location(top_border_x_location),
	.box_y_location(top_border_y_location),
	.pixel_clk(pixel_clk),
	.box(top_border)
);

//Draw the bottom border
	wire [9:0] bottom_border_width = 640;
	wire [9:0] bottom_border_height = 2;
	wire [9:0] bottom_border_x_location = 0;
	wire [9:0] bottom_border_y_location = 477;
	reg bottom_border;
	
make_box draw_bottom_border (
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(bottom_border_width),
	.box_height(bottom_border_height),
	.box_x_location(bottom_border_x_location),
	.box_y_location(bottom_border_y_location),
	.pixel_clk(pixel_clk),
	.box(bottom_border)
);

//Draw the right border
	wire [9:0] right_border_width = 2;
	wire [9:0] right_border_height = 480;
	wire [9:0] right_border_x_location = 637;
	wire [9:0] right_border_y_location = 0;
	reg right_border;
	
make_box draw_right_border (
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(right_border_width),
	.box_height(right_border_height),
	.box_x_location(right_border_x_location),
	.box_y_location(right_border_y_location),
	.pixel_clk(pixel_clk),
	.box(right_border)
);

//Draw the left_border
	wire [9:0] left_border_width = 2;
	wire [9:0] left_border_height = 480;
	wire [9:0] left_border_x_location = 0;
	wire [9:0] left_border_y_location = 0;
	reg left_border;
	
make_box draw_left_border (
	.X_pix(X_pix),
	.Y_pix(Y_pix),
	.box_width(left_border_width),
	.box_height(left_border_height),
	.box_x_location(left_border_x_location),
	.box_y_location(left_border_y_location),
	.pixel_clk(pixel_clk),
	.box(left_border)
);
							
always @(posedge pixel_clk)
	begin
		if (P1_paddle || P2_paddle || top_border || bottom_border || right_border || left_border) pixel_color <= 12'b1111_1111_1111;
		else pixel_color <= 12'b0000_0000_0000;
	end
	
		//Pass pins and current pixel values to display driver
		DE0_VGA VGA_Driver
		(
			.clk_50(CLK_50),
			.pixel_color(pixel_color),
			.VGA_BUS_R(VGA_BUS_R), 
			.VGA_BUS_G(VGA_BUS_G), 
			.VGA_BUS_B(VGA_BUS_B), 
			.VGA_HS(VGA_HS), 
			.VGA_VS(VGA_VS), 
			.X_pix(X_pix), 
			.Y_pix(Y_pix), 
			.H_visible(H_visible),
			.V_visible(V_visible), 
			.pixel_clk(pixel_clk),
			.pixel_cnt(pixel_cnt)
		);

endmodule

module make_box (
	input [9:0] X_pix,
	input [9:0] Y_pix,
	input [9:0] box_width,
	input [9:0] box_height,
	input [9:0] box_x_location,
	input [9:0] box_y_location,
	input pixel_clk,
	output reg box
);

	always @(posedge pixel_clk)
	begin
		if ((X_pix > box_x_location) && (X_pix < (box_x_location + box_width)) && (Y_pix > box_y_location) && (Y_pix < (box_y_location + box_height))) box = 1;
		else box=0;
	end
		
endmodule
