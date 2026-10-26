----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2026 11:30:11 PM
-- Design Name: 
-- Module Name: XNOR_Gate_tb - Behavioral
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

entity XNOR_Gate_tb is
--  Port ( );
end XNOR_Gate_tb;

architecture Behavioral of XNOR_Gate_tb is

signal A : std_logic := '0';
signal B : std_logic := '0';
signal Y : std_logic;

begin

DUT: entity work.XNOR_gate
        port map(
            A => A,
            B => B,
            Y => Y
            );
            
stimulate: process
begin

A <= '0';
B <= '0'; 
wait for 10 ns;

A <= '0';
B <= '1'; 
wait for 10 ns;

A <= '1';
B <= '0'; 
wait for 10 ns;

A <= '1';
B <= '1'; 
wait for 10 ns;

wait;
end process;
            
end Behavioral;
