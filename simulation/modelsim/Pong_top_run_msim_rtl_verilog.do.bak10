transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/ECE275_Labs/Pong {C:/ECE275_Labs/Pong/move_ball.v}
vlog -sv -work work +incdir+C:/ECE275_Labs/Pong {C:/ECE275_Labs/Pong/Paddle_input.v}
vlog -sv -work work +incdir+C:/ECE275_Labs/Pong {C:/ECE275_Labs/Pong/pll_pixel_clk.v}
vlog -sv -work work +incdir+C:/ECE275_Labs/Pong/db {C:/ECE275_Labs/Pong/db/pll_pixel_clk_altpll.v}
vlog -sv -work work +incdir+C:/ECE275_Labs/Pong {C:/ECE275_Labs/Pong/Pong_top.v}

