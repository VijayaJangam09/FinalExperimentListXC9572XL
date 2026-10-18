----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:52 07/19/2012 
-- Design Name: 
-- Module Name:    test_board - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_board is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           sl : out  STD_LOGIC_VECTOR (1 downto 0);
           rl : in  STD_LOGIC_VECTOR (1 downto 0);
           seg7 : out  STD_LOGIC_VECTOR (6 downto 0);
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           input_s : in  STD_LOGIC_VECTOR (13 downto 0);
			  input_sand14 : in  STD_LOGIC;
			  input_sand15 : in  STD_LOGIC;
			  output_sand15 : out  STD_LOGIC;
           output_s : out  STD_LOGIC_VECTOR (14 downto 0));
end test_board;

---------------------------------------------------------------------------------------------
architecture Behavioral of test_board is
---------------------------------------------------------------------------------------------
signal divider    	: std_logic_vector(20 downto 0);
signal d           	: std_logic_vector(3 downto 0);
signal sclock     	: std_logic;
signal dclock     	: std_logic;
signal ored        	: std_logic;
signal interupt   	: std_logic;
signal scan       	: std_logic;
signal sl_s        	: std_logic_vector(1 downto 0);
signal display_s   	: std_logic_vector(3 downto 0);
signal  seg7_s     	: std_logic_vector(6 downto 0);
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
process(rst, clk)
begin
if(rst = '1')then
divider <= (others=>'0');
elsif(clk'event and clk = '1')then
divider <= divider + 1;
end if;
end process;

sclock <= divider(16);
dclock <= divider(13);


process(sclock, rst)
begin
if(rst = '1')then
scan <= '0';
elsif(sclock'event and sclock='1')then
scan <= not scan;
end if;
end process;

sl_s <= 	"01" when scan = '1' else
"10";

sl <= sl_s;

ored <= (not rl(0)) or (not rl(1));

process(rst,dclock)
begin
if(rst = '1')then
d <=(others => '0');
elsif(dclock'event and dclock = '1')then
d <= d(2 downto 0) & ored;
end if;
end process;

interupt <= '1' when(d = "1111")else
            '0';

process(interupt, rst)
begin
      if(rst = '1')then
          display_s <= (others=>'0');
  elsif(interupt'event and interupt = '1')then
         display_s <= sl_s & rl;
end if;
end process;

------------------------------------------------------------------------------------------
--   			abcdefg
seg7_s  <= 	"0110000" when display_s ="1010" else  --1
 	      	"1101101" when display_s ="0110" else  --20110011
 	     	   "1111001" when display_s ="1001" else  --31101101
 	      	"0110011" when display_s ="0101" else  --41111001
	      	"1111111";

--seg7_s  <= 	"1001111" when display_s ="1010" else  --1
-- 	      	"0010010" when display_s ="0110" else  --20110011
-- 	     	   "0000110" when display_s ="1001" else  --31101101
-- 	      	"1001100" when display_s ="0101" else  --41111001
--	      	"0000000";
 			       		
seg7 <= not seg7_s;
sel <= (others=>'0');

--output_s <= input_s;
--output_s <= not (input_s);
output_sand15 <= (input_sand14) and (not(input_sand15)); 
---------------------------------------------------------------------------------------------
end Behavioral;
---------------------------------------------------------------------------------------------


