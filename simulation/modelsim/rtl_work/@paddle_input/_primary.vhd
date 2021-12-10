library verilog;
use verilog.vl_types.all;
entity Paddle_input is
    port(
        BUTTON0         : in     vl_logic;
        BUTTON1         : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        P1_paddle_y_location: in     vl_logic_vector(9 downto 0);
        P1_paddle_y_newlocation: out    vl_logic_vector(9 downto 0)
    );
end Paddle_input;
