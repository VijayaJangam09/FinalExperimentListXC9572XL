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

entity Test_Pins is
    Port ( --input_s: in  STD_LOGIC_VECTOR(15 downto 0);
           --output_s : OUT  STD_LOGIC_VECTOR(15 downto 0)
			  clk : in std_logic;
	 		  rst : in std_logic;
			  input_s0 : out  STD_LOGIC;
           input_s1 : out  STD_LOGIC;
			  input_s2 : out  STD_LOGIC;
			  input_s3 : out  STD_LOGIC;
			  input_s4 : out  STD_LOGIC;
			  input_s5 : out  STD_LOGIC;
			  input_s6 : out STD_LOGIC;
			  input_s7 : out  STD_LOGIC;
			  input_s8 : out  STD_LOGIC;
			  input_s9 : out  STD_LOGIC;
			  input_s10 : out  STD_LOGIC;
			  input_s11 : out  STD_LOGIC;
			  input_s12 : out  STD_LOGIC;
			  input_s13 : out  STD_LOGIC;
			  input_s14 : out  STD_LOGIC;
			  input_s15 : out  STD_LOGIC;
			  
			  output_s0 : out STD_LOGIC;
			  output_s1 : out STD_LOGIC;
			  output_s2 : out STD_LOGIC;
			  output_s3 : out STD_LOGIC;
			  output_s4 : out STD_LOGIC;
			  output_s5 : out STD_LOGIC;
			  output_s6 : out STD_LOGIC;
			  output_s7 : out STD_LOGIC;
			  output_s8 : out STD_LOGIC;
			  output_s9 : out STD_LOGIC;
			  output_s10 : out STD_LOGIC;
			  output_s11 : out STD_LOGIC;
			  output_s12 : out STD_LOGIC;
			  output_s13 : out STD_LOGIC;
			  output_s14 : out STD_LOGIC;
           output_s15 : out STD_LOGIC );
          			  
   
end Test_Pins;

architecture Behavioral of Test_Pins is
signal clk_div : STD_LOGIC_VECTOR(26 downto 0) := (others => '0');
begin
process (clk,rst)
begin
if rst = '1' then
clk_div <=  (others => '0');
elsif rising_edge(clk) then
clk_div <= clk_div + 1; 
end if;
end process; 
--output_s  <= not(input_s);
--All Switch IOs Give Clock 10 
 input_s0  <= clk_div(10); 
 input_s1  <= clk_div(10); 
 input_s2  <= clk_div(10); 
 input_s3  <= clk_div(10); 
 input_s4  <= clk_div(10);
 input_s5  <= clk_div(10);
 input_s6  <= clk_div(10);
 input_s7  <= clk_div(10);
 input_s8  <= clk_div(10);
 input_s9  <= clk_div(10);
 input_s10  <= clk_div(10);
 input_s11  <= clk_div(10);
 input_s12  <= clk_div(10);
 input_s13  <= clk_div(10);
 input_s14  <= clk_div(10);
 input_s15  <= clk_div(10);
 
 --All LED IOs Give Clock variable clocks it shows Blink with respect to its respective clock
 output_s0  <= clk_div(10);
 output_s1  <= clk_div(11);
 output_s2  <= clk_div(12);
 output_s3  <= clk_div(13);
 output_s4  <= clk_div(14);
 output_s5  <= clk_div(15);
 output_s6  <= clk_div(16);
 output_s7  <= clk_div(17);
 output_s8  <= clk_div(18);
 output_s9  <= clk_div(19);
 output_s10  <= clk_div(20);
 output_s11  <= clk_div(21);
 output_s12  <= clk_div(22);
 output_s13  <= clk_div(23);
 output_s14  <= clk_div(24);
 output_s15  <= clk_div(24);

end Behavioral;