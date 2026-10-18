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

entity FourOneMux is
Port ( --input_s: in  STD_LOGIC_VECTOR(15 downto 0);
           --output_s : OUT  STD_LOGIC_VECTOR(15 downto 0)
			  clk : in std_logic;
	 		  rst : in std_logic;
			  input_s0 : in  STD_LOGIC;
           input_s1 : in  STD_LOGIC;
			  input_s2 : in  STD_LOGIC;
			  input_s3 : in  STD_LOGIC;
			  input_SEL : in  STD_LOGIC_VECTOR (1 downto 0);

           output_s15 : out STD_LOGIC );
          			  
   
end FourOneMux;

architecture Behavioral of FourOneMux is
begin
process(rst, input_SEL, input_s0, input_s1, input_s2, input_s3)
begin
case input_SEL is
when "00" =>  output_s15 <= input_s0;
when "01" =>  output_s15 <= input_s1;
when "10" =>  output_s15 <= input_s2;
when "11" =>  output_s15 <= input_s3;
when others => output_s15 <='0';
end case;

end process;

end Behavioral;