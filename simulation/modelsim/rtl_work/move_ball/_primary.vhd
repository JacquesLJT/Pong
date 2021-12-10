library verilog;
use verilog.vl_types.all;
entity move_ball is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        X_pix           : in     vl_logic_vector(9 downto 0);
        Y_pix           : in     vl_logic_vector(9 downto 0);
        P1_paddle_x_location: in     vl_logic_vector(9 downto 0);
        P1_paddle_y_location: in     vl_logic_vector(9 downto 0);
        P2_paddle_x_location: in     vl_logic_vector(9 downto 0);
        P2_paddle_y_location: in     vl_logic_vector(9 downto 0);
        new_ball_x_location: out    vl_logic_vector(9 downto 0);
        new_ball_y_location: out    vl_logic_vector(9 downto 0);
        P2_location     : out    vl_logic_vector(9 downto 0);
        P1_score        : out    vl_logic_vector(3 downto 0);
        P2_score        : out    vl_logic_vector(3 downto 0)
    );
end move_ball;
