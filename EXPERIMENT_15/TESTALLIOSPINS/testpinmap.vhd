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
           output_s15 : out STD_LOGIC;
           Sl0 : out  STD_LOGIC;
           Sl1 : out  STD_LOGIC;
           Rl0  : out  STD_LOGIC;
           Rl1 : out  STD_LOGIC;
seg7  : out  STD_LOGIC;
seg6  : out  STD_LOGIC;
seg5  : out  STD_LOGIC;
seg4  : out  STD_LOGIC;
seg3  : out  STD_LOGIC;
seg2  : out STD_LOGIC;
seg1  : out  STD_LOGIC;
seg0  : out  STD_LOGIC; 

an0  : out  STD_LOGIC;
an1  : out  STD_LOGIC;
an2  : out  STD_LOGIC;
an3  : out  STD_LOGIC;

Free_IOs0  : out  STD_LOGIC;
Free_IOs1  : out STD_LOGIC;
Free_IOs2  : out STD_LOGIC;
Free_IOs3  : out STD_LOGIC;
Free_IOs4  : out STD_LOGIC;
Free_IOs5  : out STD_LOGIC;
Free_IOs6  : out STD_LOGIC;
Free_IOs7  : out STD_LOGIC;
Free_IOs8  : out STD_LOGIC;
Free_IOs9  : out STD_LOGIC;
Free_IOs10 : out STD_LOGIC;
Free_IOs11  : out STD_LOGIC;
Free_IOs12  : out STD_LOGIC; 
--Free_IOs13  : out STD_LOGIC; 
Free_IOs14  : out STD_LOGIC; 
Free_IOs15 : out STD_LOGIC; 
Free_IOs16 : out STD_LOGIC; 
Free_IOs17  : out STD_LOGIC; 
Free_IOs18 : out STD_LOGIC; 
Free_IOs19 : out STD_LOGIC);
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
 --input_s13  <= clk_div(10);
 input_s14  <= clk_div(10);
 input_s15  <= clk_div(10);
 
 output_s0  <= clk_div(10);
 output_s1  <= clk_div(10);
 output_s2  <= clk_div(10);
 output_s3  <= clk_div(10);
 output_s4  <= clk_div(10);
 output_s5  <= clk_div(10);
 output_s6  <= clk_div(10);
 output_s7  <= clk_div(10);
 output_s8  <= clk_div(10);
 output_s9  <= clk_div(10);
 output_s10  <= clk_div(10);
 output_s11  <= clk_div(10);
 output_s12  <= clk_div(10);
 output_s13  <= clk_div(10);
 output_s14  <= clk_div(10);
 output_s15  <= clk_div(10);
 Sl0  <= clk_div(10);
 Sl1  <= clk_div(10);
 Rl0  <= clk_div(10);
 Rl1  <= clk_div(10);
seg7  <= clk_div(10);
seg6  <= clk_div(10);
seg5  <= clk_div(10);
seg4  <= clk_div(10);
seg3  <= clk_div(10);
seg2  <= clk_div(10);
seg1  <= clk_div(10);
seg0  <= clk_div(10); 
an0   <= clk_div(10);
an1   <= clk_div(10);
an2   <= clk_div(10);
an3   <= clk_div(10);
Free_IOs0 <= clk_div(10);
Free_IOs1 <= clk_div(10);
Free_IOs2 <= clk_div(10);
Free_IOs3 <= clk_div(10);
Free_IOs4 <= clk_div(10);
Free_IOs5 <= clk_div(10);
Free_IOs6 <= clk_div(10);
Free_IOs7 <= clk_div(10);
Free_IOs8 <= clk_div(10);
Free_IOs9 <= clk_div(10);
Free_IOs10 <= clk_div(10);
Free_IOs11 <= clk_div(10);
Free_IOs12 <= clk_div(10);

Free_IOs13  <= clk_div(10);
Free_IOs14  <= clk_div(10);
Free_IOs15  <= clk_div(10);
Free_IOs16  <= clk_div(10);
Free_IOs17  <= clk_div(10);
Free_IOs18  <= clk_div(10);
Free_IOs19  <= clk_div(10);




end Behavioral;