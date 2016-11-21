----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:13:45 11/20/2016 
-- Design Name: 
-- Module Name:    MEMSrcMUX - Behavioral 
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

entity MEMSrcMUX is
    Port ( rx : in  STD_LOGIC_VECTOR (15 downto 0);
           ry : in  STD_LOGIC_VECTOR (15 downto 0);
           RA : in  STD_LOGIC_VECTOR (15 downto 0);
           ctrl : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end MEMSrcMUX;

architecture Behavioral of MEMSrcMUX is

begin
process(rx, ry, RA, ctrl)
begin
	case ctrl is
		when MEMSrc.rx =>
			output <= rx;
		when MEMSrc.ry =>
			output <= ry;
		when MEMSrc.RA =>
			output <= RA;
		when others =>
			output <= (others => '1');		
	end case;
end process;

end Behavioral;

