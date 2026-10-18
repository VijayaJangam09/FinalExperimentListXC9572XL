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

entity EightOneMux is
Port ( --input_s: in  STD_LOGIC_VECTOR(15 downto 0);
           --output_s : OUT  STD_LOGIC_VECTOR(15 downto 0)
			  --clk : in std_logic;
	 		  rst : in STD_LOGIC;
			  input_s0 : in  STD_LOGIC;
           input_s1 : in  STD_LOGIC;
			  input_s2 : in  STD_LOGIC;
			  input_s3 : in  STD_LOGIC;
			  input_s4 : in  STD_LOGIC;
			  input_s5 : in  STD_LOGIC;
			  input_s6 : in STD_LOGIC;
			  input_s7 : in  STD_LOGIC;
			  input_SEL : in  STD_LOGIC_VECTOR (2 downto 0);
			  --input_s8 : in  STD_LOGIC;
			 -- input_s9 : in  STD_LOGIC;
			 -- input_s10 : in  STD_LOGIC;
			 -- input_s11 : in  STD_LOGIC;
			 --- input_s12 : in  STD_LOGIC;
			
			  
			--  output_s0 : out STD_LOGIC;
			 -- output_s1 : out STD_LOGIC;
			 -- output_s2 : out STD_LOGIC;
			  --output_s3 : out STD_LOGIC;
			  --output_s4 : out STD_LOGIC;
			 -- output_s5 : out STD_LOGIC;
			 -- output_s6 : out STD_LOGIC;
			 -- output_s7 : out STD_LOGIC;
			--  output_s8 : out STD_LOGIC;
			 -- output_s9 : out STD_LOGIC;
			 -- output_s10 : out STD_LOGIC;
			--  output_s11 : out STD_LOGIC;
			 -- output_s12 : out STD_LOGIC;
			 -- output_s13 : out STD_LOGIC;
			  --output_s14 : out STD_LOGIC;
           output_s15 : out STD_LOGIC );
		  
   
end EightOneMux;

architecture Behavioral of EightOneMux is
--signal clk_div : STD_LOGIC_VECTOR(26 downto 0) := (others => '0');
begin
process(rst, input_SEL, input_s0, input_s1, input_s2, input_s3,input_s4, input_s5,input_s6,input_s7)
begin
case input_SEL is
when "000" =>  output_s15 <= input_s0;
when "001" =>  output_s15 <= input_s1;
when "010" =>  output_s15 <= input_s2;
when "011" =>  output_s15 <= input_s3;
when "100" =>  output_s15 <= input_s4;
when "101" =>  output_s15 <= input_s5;
when "110" =>  output_s15 <= input_s6;
when "111" =>  output_s15 <= input_s7;
when others => output_s15 <='0';
end case;

end process;

end Behavioral;