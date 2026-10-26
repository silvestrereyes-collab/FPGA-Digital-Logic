----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2026 09:39:40 AM
-- Design Name: 
-- Module Name: NAND_NOT_Gate_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NAND_NOT_Gate_tb is
--  Port ( );
end NAND_NOT_Gate_tb;

architecture Behavioral of NAND_NOT_Gate_tb is

    signal A : std_logic := '0';
    signal Y : std_logic;
    
    
begin

DUT: entity work.NOT_NAND_Gate
    port map ( 
    
    A => A,
    Y => Y
    
    );
    
stimulus: process
begin 

A <= '0';
wait for 10 ns;

A <= '1';
wait for 10 ns;

A <= '0';
wait for 10 ns;

A <= '1';
wait for 10 ns;

wait;
end process;

end Behavioral;
