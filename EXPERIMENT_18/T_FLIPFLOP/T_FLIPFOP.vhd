----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:54 10/12/2026 
-- Design Name: 
-- Module Name:    T_FLIPFOP - Behavioral 
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

entity T_FLIPFOP is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           T : in  STD_LOGIC;
           Q : out  STD_LOGIC
          			  );
end T_FLIPFOP;

architecture Behavioral of T_FLIPFOP is
signal q_reg : STD_LOGIC := '0';
begin
process(clk,rst) 
begin
if rst='1' then
q_reg <='0'; 
elsif rising_edge(clk) then
if T = '1' then
q_reg <= not q_reg;
else
q_reg <= q_reg; 
end if; 
end if;
end process;
Q<= q_reg;
end Behavioral;

