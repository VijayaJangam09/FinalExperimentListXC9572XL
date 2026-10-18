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

entity Logic_Operation is
    Port ( --input_s: in  STD_LOGIC_VECTOR(15 downto 0);
           --output_s : OUT  STD_LOGIC_VECTOR(15 downto 0)
			  clk : in std_logic;
	 		  rst : in std_logic;
			  input_s0 : in  STD_LOGIC;
           input_s1 : in  STD_LOGIC;
			  input_s2 : in  STD_LOGIC;
			  input_s3 : in  STD_LOGIC;
			  input_s4 : in  STD_LOGIC;
			  input_s5 : in  STD_LOGIC;
			  input_s6 : in STD_LOGIC;
			  input_s7 : in  STD_LOGIC;
			  input_s8 : in  STD_LOGIC;
			  input_s9 : in  STD_LOGIC;
			  input_s10 : in  STD_LOGIC;
			  input_s11 : in  STD_LOGIC;
			  input_s12 : in  STD_LOGIC;
			  input_s13 : in  STD_LOGIC;			  
			  output_s0 : out STD_LOGIC;
			  output_s1 : out STD_LOGIC;
			  output_s2 : out STD_LOGIC;
			  output_s3 : out STD_LOGIC;
			  output_s4 : out STD_LOGIC;
			  output_s5 : out STD_LOGIC;
			  output_s6 : out STD_LOGIC;
			  output_s7 : out STD_LOGIC);       			    
end Logic_Operation;
   architecture Behavioral of Logic_Operation is
begin
output_s0 <= input_s0 nand input_s1;
output_s1 <= input_s2 nor input_s3;
output_s2 <= input_s4 and input_s5;
output_s3 <= input_s6 or input_s7;
output_s4 <= input_s8 xor input_s9;
output_s5 <= input_s10 xnor input_s11;
output_s6 <= not (input_s12);
output_s7  <= not(not input_s13);
end Behavioral;