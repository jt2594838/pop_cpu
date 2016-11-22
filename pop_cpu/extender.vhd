----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:07 11/20/2016 
-- Design Name: 
-- Module Name:    extender - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Extender is
	Port(	ins : in STD_LOGIC_VECTOR(15 downto 0);
			immSel : in STD_LOGIC_VECTOR(2 downto 0);
			immResult: out STD_LOGIC_VECTOR(15 downto 0));
end Extender;

architecture ExtenderBehavioral of Extender is

begin
	process(immSel)
	begin
		if(immSel = "000") then
			immResult <= "0000000000000" & ins(4 downto 2);
			--3 bit zero extend
		elsif(immSel = "001") then
			if(ins(3) = '0') then
				immResult <= "000000000000" & ins(3 downto 0);
			elsif(ins(3) = '1') then
				immResult <= "111111111111" & ins(3 downto 0);
			end if;
			--4 bit sign extend
		elsif(immSel = "010") then
			if(ins(4) = '0') then
				immResult <= "00000000000" & ins(4 downto 0);
			elsif(ins(4) = '1') then
				immResult <= "11111111111" & ins(4 downto 0);
			end if;
			--5 bit sign extend
		elsif(immSel = "011") then
			if(ins(7) = '0') then
				immResult <= "00000000" & ins(7 downto 0);
			elsif(ins(7) = '1') then
				immResult <= "11111111" & ins(7 downto 0);
			end if;
			--8 bit sign extend
		elsif(immSel = "100") then
			immResult <= "00000000" & ins(7 downto 0);
			--8 bit zero extend
		elsif(immSel = "101") then
			if(ins(10) = '0') then
				immResult <= "00000" & ins(10 downto 0);
			elsif(ins(10) = '1') then
				immResult <= "11111" & ins(10 downto 0);
			end if;
			--11 bit sign extend
		end if;
	end process;
end ExtenderBehavioral;

