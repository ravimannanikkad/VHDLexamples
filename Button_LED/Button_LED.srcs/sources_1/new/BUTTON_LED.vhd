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
use IEEE.numeric_std.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BUTTON_LED is

  Port (
  LED_OUT   : out std_logic;
  --LED_OUT2   : out std_logic;
  RESET_IN  : in  std_logic;
  CLK_IN    : in  std_logic
  --CLK_OUT   : out std_logic

  );

end BUTTON_LED;
--
architecture Behavioral of BUTTON_LED is
--signal COUNTER : integer :=1 ;
--signal 1HZ_OUT : std_logic ;
signal COUNTER: integer:=1;
signal HZ_OUT : std_logic := '0';

begin
  --Sequencial Process for dividing the clock
  process(CLK_IN,RESET_IN)
  begin
    if (RESET_IN ='1') then
      COUNTER <= 1;
      HZ_OUT <= '0';
    elsif (CLK_IN'event and CLK_IN='1') then
      COUNTER<=COUNTER+1;
      if (COUNTER = 125000000) then
        HZ_OUT<= NOT HZ_OUT;
        COUNTER <= 1;
      end if;
    end if;
    LED_OUT<=HZ_OUT;

  end process;

end Behavioral;
