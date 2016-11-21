----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:02 11/21/2016 
-- Design Name: 
-- Module Name:    WBSrcMUX - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity WBSrcMUX is
    Port ( inRst : in  STD_LOGIC_VECTOR (15 downto 0);
           inBuffer : in  STD_LOGIC_VECTOR (15 downto 0);
           inWBSrc : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end WBSrcMUX;

architecture Behavioral of WBSrcMUX is

begin

process(inRst, inBuffer, inWBSrc)
begin
	case inWBSrc is
		when '0' =>
			output <= inRst;
		when '1' =>
			output <= inBuffer;
		when others =>
			output <= (others => '1');
	end case;
end process;

end Behavioral;

