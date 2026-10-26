----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2026 09:04:53 PM
-- Design Name: 
-- Module Name: XOR_Using_NOR_tb - Behavioral
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

entity XOR_Using_NOR_tb is
--  Port ( );
end XOR_Using_NOR_tb;

architecture Behavioral of XOR_Using_NOR_tb is

Signal A : std_logic := '0';
Signal B : std_logic := '0';
Signal Y : std_logic; 

begin

DUT: entity work.XOR_Using_Nor
    port map( 
    A => A, 
    B => B,
    Y => Y
    );
    
stimulus: process
begin 

A <= '0'; B <= '0';
wait for 10 ns;
A <= '0'; B <= '1';
wait for 10 ns;
A <= '1'; B <= '0';
wait for 10 ns;
A <= '1'; B <= '1';
wait for 10 ns;

wait;
end process;
 

end Behavioral;
