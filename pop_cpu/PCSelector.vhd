----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:55 11/20/2016 
-- Design Name: 
-- Module Name:    PCSelector - Behavioral 
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

entity PCSelector is
	Port(	PC_1: in STD_LOGIC_VECTOR(15 downto 0);
			branchResult: in STD_LOGIC_VECTOR(15 downto 0);
			regResult: in STD_LOGIC_VECTOR(15 downto 0);
			ctrl: in STD_LOGIC_VECTOR(2 downto 0);
			PCout: out STD_LOGIC_VECTOR(15 downto 0));
end PCSelector;

architecture PCSELECTORBehavioral of PCSelector is

begin
	process(ctrl)
	begin
		if(ctrl = "00") then
			PCout <= PC_1;
		elsif(ctrl = "01") then
			PCout <= branchResult;
		elsif(ctrl = "10") then
			PCout <= regResult;
		end if;
	end process;
end PCSELECTORBehavioral;

