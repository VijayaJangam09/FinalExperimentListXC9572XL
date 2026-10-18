library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_seg is
 Port ( clk : in STD_LOGIC; rst : in STD_LOGIC;

       sl : out  STD_LOGIC_VECTOR (1 downto 0);
        rl : in  STD_LOGIC_VECTOR (1 downto 0);
        seg : out STD_LOGIC_VECTOR(6 downto 0);
        an : out STD_LOGIC_VECTOR(3 downto 0) );
end seven_seg;

architecture Behavioral of seven_seg is
signal div : STD_LOGIC_VECTOR(24 downto 0):=(others=>'0'); -- for slow clock
signal hex_cnt : STD_LOGIC_VECTOR(15 downto 0):=(others=>'0'); -- 0000 to FFFF = 16 bit
signal digit_sel : STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
signal digit_val : STD_LOGIC_VECTOR(3 downto 0);
begin
-- Main clock divider and counter
process(clk,rst)
begin
 if rst='1' then
   div <= (others=>'0');
   hex_cnt <= (others=>'0');
 elsif rising_edge(clk) then
   div <= div+1;
   -- div(24) ~ 0.7Hz at 50MHz clock - for 0000-FFFF counting speed
   -- Change div bit for faster/slower
   if div(22)='1' and div(21 downto 0)=0 then -- ~ 2Hz count
     hex_cnt <= hex_cnt+1; -- 0000 to FFFF auto rollover
   end if;
 end if;
end process;
-- Fast multiplexing for 4 digits - use lower bits of div
digit_sel <= div(15 downto 14); -- ~ 1.5KHz refresh
-- Select which digit to show
process(digit_sel, hex_cnt)
begin
 case digit_sel is
  when "00" => digit_val <= hex_cnt(3 downto 0); -- LSD
  when "01" => digit_val <= hex_cnt(7 downto 4);
  when "10" => digit_val <= hex_cnt(11 downto 8);
  when "11" => digit_val <= hex_cnt(15 downto 12); -- MSD
  when others => digit_val <= hex_cnt(3 downto 0);
 end case;
end process;
-- Anode select - Active LOW for your board
with digit_sel select
 an <= "1110" when "00", -- D0
       "1101" when "01", -- D1
       "1011" when "10", -- D2
       "0111" when "11", -- D3
       "1111" when others;
-- 7-seg decoder - Active LOW
with digit_val select
 seg <= "1000000" when "0000", -- 0
		  "1111001" when "0001", -- 1
		  "0100100" when "0010", -- 2	  
		  "0110000" when "0011", -- 3
        "0011001" when "0100", -- 4
        "0010010" when "0101", -- 5
        "0000010" when "0110", -- 6
        "1111000" when "0111", -- 7
        "0000000" when "1000", -- 8
        "0010000" when "1001", -- 9
        "0001000" when "1010", -- A
		  "0000000" when "1011", -- b
        "1000110" when "1100", -- C
		  "1000000" when "1101", -- d
        "0000110" when "1110", -- E
        "0001110" when "1111", -- F
        "1111111" when others;
end Behavioral;
