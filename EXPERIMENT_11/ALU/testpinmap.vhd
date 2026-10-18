
--ALU code 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alutest is
    Port ( a : in  signed(3 downto 0);
           b : in  signed (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           c : out  signed (3 downto 0));
end alutest;

architecture Behavioral of alutest is

begin
process(sel, a, b)
begin
case sel is
when "00" =>
c <= a + b;
when "01" =>
c <= a - b;
when "10" =>
c <= a + 1;
when "11" =>
c <= a - 1;
when others =>
NULL;
end case;
end process;
end Behavioral;


