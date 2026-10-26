----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2026 08:44:23 PM
-- Design Name: 
-- Module Name: Full_Adder_tb - Behavioral
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

entity Full_Adder_tb is

end Full_Adder_tb;

architecture Behavioral of Full_Adder_tb is

signal A : std_logic;
signal B : std_logic;
Signal C_in : std_logic;
Signal C_out : std_logic;
Signal Sum : std_logic;
begin

DUT: entity work.Full_Adder 
port map(
A => A,
B => B,
C_in => C_in,
C_out => C_out,
Sum => Sum
);

stimulus: process
begin 
A <= '0'; B <= '0'; C_in <= '0';
wait for 10 ns;
A <= '0'; B <= '0'; C_in <= '1';
wait for 10 ns;
A <= '0'; B <= '1'; C_in <= '0';
wait for 10 ns;
A <= '0'; B <= '1'; C_in <= '1';
wait for 10 ns;
A <= '1'; B <= '0'; C_in <= '0';
wait for 10 ns;
A <= '1'; B <= '0'; C_in <= '1';
wait for 10 ns;
A <= '1'; B <= '1'; C_in <= '0';
wait for 10 ns;
A <= '1'; B <= '1'; C_in <= '1';
wait for 10 ns;

wait;
end process;

end Behavioral;
