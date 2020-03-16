----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2020 09:01:49 PM
-- Design Name:
-- Module Name: test - AND_GATE
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

entity AND_GATE is
 Port (
 A: in STD_LOGIC;
 B: in STD_LOGIC;
 C: out STD_LOGIC );
end AND_GATE;

architecture AND_GATE of test is

begin
C<=A and B;

end AND_GATE;
