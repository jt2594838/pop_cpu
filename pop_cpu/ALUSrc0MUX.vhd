----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:07 11/20/2016 
-- Design Name: 
-- Module Name:    ALUSrc0MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use recordDefs.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUSrc0MUX is
    Port ( rx : in  STD_LOGIC_VECTOR (15 downto 0);
           ry : in  STD_LOGIC_VECTOR (15 downto 0);
           SP : in  STD_LOGIC_VECTOR (15 downto 0);
           ctrl : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end ALUSrc0MUX;

architecture Behavioral of ALUSrc0MUX is

begin

process(rx, ry, sp, ctrl)
begin
	case ctrl is
		when ALUSrc0.rx =>
			output <= rx;
		when ALUSrc0.ry =>
			output <= ry;
		when ALUSrc0.SP =>
			output <= SP;	
		when ALUSrc0.zero =>
			output <= (others => '0');	
		when others =>
			output <= "1111111111111111";
	end case;
end process;

end Behavioral;

