library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.package1.all;

entity NTT is

    port(
		--hi_lvl_ctrl : in std logic
        clk, rst : in std_logic;
        A : in L_array;
        O : out L_array
    );

end NTT;

architecture rtl of NTT is
    
    signal v : L_array;
    signal u : L_array;
    signal w : S_array;
        

begin

    --control


    --w_rom


    --bfus
    
    mod_bfu1: entity work.mod_bfu
        generic map(
			N => N,
			P => P
		)
		port map(
			clk => clk,
			rst => rst,
			a => v(0),
			b => v(1),
			w => w(0),
			rA_bfu => u(0),
			rB_bfu => u(1)
		);

    mod_bfu2: entity work.mod_bfu
        generic map(
			N => N,
			P => P
		)
		port map(
			clk => clk,
			rst => rst,
			a => v(2),
			b => v(3),
			w => w(1),
			rA_bfu => u(2),
			rB_bfu => u(3)
		);

    mod_bfu3: entity work.mod_bfu
        generic map(
			N => N,
			P => P
		)
		port map(
			clk => clk,
			rst => rst,
			a => v(4),
			b => v(5),
			w => w(2),
			rA_bfu => u(4),
			rB_bfu => u(5)
		);

    mod_bfu4: entity work.mod_bfu
        generic map(
			N => N,
			P => P
		)
		port map(
			clk => clk,
			rst => rst,
			a => v(6),
			b => v(7),
			w => w(3),
			rA_bfu => u(6),
			rB_bfu => u(7)
		);
    
end architecture rtl;