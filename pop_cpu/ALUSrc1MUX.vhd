----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:25 11/20/2016 
-- Design Name: 
-- Module Name:    ALUSrc1MUX - Behavioral 
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

entity ALUSrc1MUX is
    Port ( imm : in  STD_LOGIC_VECTOR (15 downto 0);
           rx : in  STD_LOGIC_VECTOR (15 downto 0);
           ry : in  STD_LOGIC_VECTOR (15 downto 0);
           IH : in  STD_LOGIC_VECTOR (15 downto 0);
           PC : in  STD_LOGIC_VECTOR (15 downto 0);
           ctrl : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end ALUSrc1MUX;
 
architecture Behavioral of ALUSrc1MUX is

begin

process(imm, rx, ry, IH, PC, ctrl)
begin
	case ctrl is
		when ALUSrc1.rx =>
			output <= rx;
		when ALUSrc1.ry =>
			output <= ry;
		when ALUSrc1.IH =>
			output <= IH;
		when ALUSrc1.PC =>
			output <= PC;
		when ALUSrc1.imm =>
			output <= imm;
		when others =>
			output <= "1111111111111111";	
	end case;
end process;

end Behavioral;

