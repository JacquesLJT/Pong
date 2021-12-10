library verilog;
use verilog.vl_types.all;
entity Pong_top is
    port(
        CLK_50          : in     vl_logic;
        VGA_BUS_R       : out    vl_logic_vector(3 downto 0);
        VGA_BUS_G       : out    vl_logic_vector(3 downto 0);
        VGA_BUS_B       : out    vl_logic_vector(3 downto 0);
        VGA_HS          : out    vl_logic_vector(0 downto 0);
        VGA_VS          : out    vl_logic_vector(0 downto 0);
        ORG_BUTTON      : in     vl_logic_vector(2 downto 0)
    );
end Pong_top;
