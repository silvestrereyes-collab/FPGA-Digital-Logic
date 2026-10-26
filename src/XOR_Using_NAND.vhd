----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2026 08:20:33 PM
-- Design Name: 
-- Module Name: XOR_Using_NAND - Behavioral
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

entity XOR_Using_NAND is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end XOR_Using_NAND;

architecture Behavioral of XOR_Using_NAND is

signal temp_1 : std_logic;
signal temp_2 : std_logic;
signal temp_3 : std_logic;

begin
temp_1 <= A nand B;
temp_2 <= A nand temp_1;
temp_3 <= B nand temp_1;
Y <= temp_2 nand temp_3;


end Behavioral;
