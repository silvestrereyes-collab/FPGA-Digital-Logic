----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2026 05:06:56 PM
-- Design Name: 
-- Module Name: NOT_Using_Nor_tb - Behavioral
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

entity NOT_Using_Nor_tb is
--  Port ( );
end NOT_Using_Nor_tb;

architecture Behavioral of NOT_Using_Nor_tb is

Signal A : Std_Logic := '0';
Signal Y : std_logic;

begin

DUT: entity work.NOT_Using_NOR
    port map (
    A => A,
    Y => Y
    );
    
stimulus:  process 
begin

A <= '0';
wait for 10 ns;

A <= '1';
wait for 10 ns;

wait;
end process;

end Behavioral;
