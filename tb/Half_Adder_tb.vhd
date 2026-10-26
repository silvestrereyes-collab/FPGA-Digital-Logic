----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2026 10:24:31 PM
-- Design Name: 
-- Module Name: Half_Adder_tb - Behavioral
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

entity Half_Adder_tb is
--  Port ( );
end Half_Adder_tb;

architecture Behavioral of Half_Adder_tb is

Signal A : std_logic;
Signal B : std_logic;
Signal C : std_logic;
Signal S : std_logic;

begin

DUT: entity work.Half_Adder
port map(
A => A,
B => B,
Carry => C,
Sum => S
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
