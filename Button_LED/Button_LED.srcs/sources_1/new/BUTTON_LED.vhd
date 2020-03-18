----------------------------------------------------------------------------------
-- Company: Vaayoo Mantra Pvt. Ltf
-- Engineer: Ravi Damodaran
--
-- Create Date: 03/16/2020 07:20:32 PM
-- Design Name:
-- Module Name: BUTTON_LED - Behavioral
-- Project Name: BUTTON_LED
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

entity BUTTON_LED is
  Port (
  LED_OUT   : out STD_LOGIC;
  BUTTON_IN : in  STD_LOGIC;
  ENABLE    : in  STD_LOGIC
   );

end BUTTON_LED;

architecture Behavioral of BUTTON_LED is

begin

LED_OUT<= BUTTON_IN and ENABLE;

end Behavioral;
