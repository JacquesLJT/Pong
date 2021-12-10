transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong {C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/move_ball.v}
vlog -sv -work work +incdir+C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong {C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/Paddle_input.v}
vlog -sv -work work +incdir+C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong {C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/pll_pixel_clk.v}
vlog -sv -work work +incdir+C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/db {C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/db/pll_pixel_clk_altpll.v}
vlog -sv -work work +incdir+C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong {C:/Users/carte/OneDrive/Documents/ECE275/Pong_275/Pong/Pong_top.v}

