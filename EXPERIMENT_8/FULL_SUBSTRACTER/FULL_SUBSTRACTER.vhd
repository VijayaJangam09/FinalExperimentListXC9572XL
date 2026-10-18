----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:04 10/12/2026 
-- Design Name: 
-- Module Name:    FULL_SUBSTRACTER - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FULL_SUBSTRACTER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BARROW : out  STD_LOGIC);
end FULL_SUBSTRACTER;

architecture Behavioral of FULL_SUBSTRACTER is

begin
 DIFF <=  (A xor B) xor Bin;
 BARROW <= ((not A) and B) or ( B and Bin) or ((not A) and Bin);

end Behavioral;

