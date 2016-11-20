----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:03 11/20/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use recordDefs.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( src1 : in  STD_LOGIC_VECTOR (15 downto 0);
           src2 : in  STD_LOGIC_VECTOR (15 downto 0);
           func : in  STD_LOGIC_VECTOR (2 downto 0);
           rst : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

process(src1, src2, func)
begin
	case func is
		when ALUFunc.sigSLL => 
				rst <= src1 sll src2;
		when ALUFunc.sigSRL =>
				rst <= src1 srl src2;
		when ALUFunc.sigSRA =>
				rst <= src1 sra src2;
		when ALUFunc.sigADD =>
				rst <= src1 + src2;
		when ALUFunc.sigSUB =>
				rst <= src1 - src2;
		when ALUFunc.sigAND =>
				rst <= src1 and src2;
		when ALUFunc.sigOR  =>
				rst <= src1 or src2;
		when ALUFunc.sigCMP =>
				if src1 = src2 then
					rst <= (others => '0');
				else
					rst <= (0 => '1',others => '0');
				end if;
		when others =>
				rst <= (others => '1');
	end case;
end process;

end Behavioral;

