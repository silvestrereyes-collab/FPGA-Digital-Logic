----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2026 07:56:32 PM
-- Design Name: 
-- Module Name: or_gate_tb - Behavioral
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

entity or_gate_tb is
--  Port ( );
end or_gate_tb;

architecture Behavioral of or_gate_tb is
    signal A : std_logic  := '0';
    signal B : std_logic  := '0';
    signal Y : std_logic; 
begin
    
    DUT: entity work.OR_Gate
        port map (
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
