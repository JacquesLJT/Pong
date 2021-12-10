library verilog;
use verilog.vl_types.all;
entity make_box is
    port(
        X_pix           : in     vl_logic_vector(9 downto 0);
        Y_pix           : in     vl_logic_vector(9 downto 0);
        box_width       : in     vl_logic_vector(9 downto 0);
        box_height      : in     vl_logic_vector(9 downto 0);
        box_x_location  : in     vl_logic_vector(9 downto 0);
        box_y_location  : in     vl_logic_vector(9 downto 0);
        pixel_clk       : in     vl_logic;
        box             : out    vl_logic
    );
end make_box;
