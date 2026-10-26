----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2026 09:24:53 AM
-- Design Name: 
-- Module Name: Full_Adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in std_logic;
           B : in std_logic;
           C_in : in STD_LOGIC;
           Sum : out STD_LOGIC;
           C_out : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
signal C_1 : std_logic;
signal C_2 : std_logic;
signal S_1 : std_logic;  

begin

--LOGICAL Adder 
S_1 <= A XOR B;
C_1 <= A AND B;
C_2 <= S_1 AND C_in;
Sum <= S_1 XOR C_in;
C_out <= C_1 OR C_2;


end Behavioral;
