library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_segl_down is
 Port ( clk : in STD_LOGIC; 
 rst : in STD_LOGIC;
        seg : out STD_LOGIC_VECTOR(6 downto 0); -- a b c d e f g
        an : out STD_LOGIC_VECTOR(3 downto 0) ); -- digit select
end seven_segl_down;

architecture Behavioral of seven_segl_down is
signal div : STD_LOGIC_VECTOR(20 downto 0):=(others=>'0');
signal cnt : STD_LOGIC_VECTOR(3 downto 0):=(others=>'0');
begin

process(clk,rst)
begin
 if rst='1' then div<=(others=>'0'); cnt<=(others=>'0');
 elsif rising_edge(clk) then
  div <= div+1;
  if div=0 then cnt <= cnt+1; end if; -- counts 0 to 15
 end if;
end process;

an <= "1110"; -- enable only first digit, other 3 OFF

with cnt select
 seg <= "0001110" when "0001", -- F
		  "0000110" when "0010", -- E
		  "0100001" when "0011", -- d
		  "1000110" when "0100", -- C 
		  "0000011" when "0101", -- b
		  "0001000" when "0110", -- A 
		  "0010000" when "0111", -- 9
		  "0000000" when "1000", -- 8
		  "1111000" when "1001", -- 7
		  "0000010" when "1010", -- 6
		  "0010010" when "1011", -- 5
		  "0011001" when "1100", -- 4
		  "0110000" when "1101", -- 3
		  "0100100" when "1110", -- 2
		  "1111001" when "1111", -- 1      
        "1111111" when others;  
end Behavioral;