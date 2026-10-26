----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2026 07:18:12 PM
-- Design Name: 
-- Module Name: AND_Using_NOR - Behavioral
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

entity AND_Using_NOR is
Port (
       A : in std_logic;
       B : in std_logic;
       Y : out std_logic);

end AND_Using_NOR;

architecture Behavioral of AND_Using_NOR is

signal temp_1 : std_logic;
signal temp_2 : std_logic;
 
begin

temp_1 <=  A nor A; 
temp_2 <= B nor B;
Y <= temp_1 nor temp_2;

end Behavioral;
