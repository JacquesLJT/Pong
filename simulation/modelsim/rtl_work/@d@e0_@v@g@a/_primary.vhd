library verilog;
use verilog.vl_types.all;
entity DE0_VGA is
    generic(
        HSNC_STRT       : integer := 16;
        HSNC_END        : vl_notype;
        HBCK_PRCH_END   : vl_notype;
        HVSBL_END       : vl_notype;
        VSNC_STRT       : integer := 10;
        VSNC_END        : vl_notype;
        VBCK_PRCH_END   : vl_notype;
        VVSBL_END       : vl_notype
    );
    port(
        clk_50          : in     vl_logic;
        pixel_color     : in     vl_logic_vector(11 downto 0);
        VGA_BUS_R       : out    vl_logic_vector(3 downto 0);
        VGA_BUS_G       : out    vl_logic_vector(3 downto 0);
        VGA_BUS_B       : out    vl_logic_vector(3 downto 0);
        VGA_HS          : out    vl_logic_vector(0 downto 0);
        VGA_VS          : out    vl_logic_vector(0 downto 0);
        X_pix           : out    vl_logic_vector(10 downto 0);
        Y_pix           : out    vl_logic_vector(10 downto 0);
        H_visible       : out    vl_logic_vector(0 downto 0);
        V_visible       : out    vl_logic_vector(0 downto 0);
        pixel_clk       : out    vl_logic_vector(0 downto 0);
        pixel_cnt       : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of HSNC_STRT : constant is 1;
    attribute mti_svvh_generic_type of HSNC_END : constant is 3;
    attribute mti_svvh_generic_type of HBCK_PRCH_END : constant is 3;
    attribute mti_svvh_generic_type of HVSBL_END : constant is 3;
    attribute mti_svvh_generic_type of VSNC_STRT : constant is 1;
    attribute mti_svvh_generic_type of VSNC_END : constant is 3;
    attribute mti_svvh_generic_type of VBCK_PRCH_END : constant is 3;
    attribute mti_svvh_generic_type of VVSBL_END : constant is 3;
end DE0_VGA;
