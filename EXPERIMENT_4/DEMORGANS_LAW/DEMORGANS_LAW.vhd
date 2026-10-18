----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:55 10/12/2026 
-- Design Name: 
-- Module Name:    DEMORGANS_LAW - Behavioral 
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

entity DEMORGANS_LAW is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           LHS1 : out  STD_LOGIC;
           RHS1 : out  STD_LOGIC;
           LHS2 : out  STD_LOGIC;
           RHS2 : out  STD_LOGIC);
end DEMORGANS_LAW;

architecture Behavioral of DEMORGANS_LAW is

begin
  
  LHS1 <= not (A and B);
  RHS1 <= (not A) or (not B);
  LHS2 <= not (A or B);
  RHS2 <= (not A) and (not B);
  
end Behavioral;

