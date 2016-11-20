----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:20:21 11/20/2016 
-- Design Name: 
-- Module Name:    PCAdder - Behavioral 
-- 说明：直接给pc加1
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

entity PCAdder is
	Port(	PCin: in STD_LOGIC_VECTOR(17 downto 0);
			PCout: out STD_LOGIC_VECTOR(17 downto 0));
end PCAdder;

architecture PCADDERBehavioral of PCAdder is

begin
	PCout <= PCin + '1';
end PCADDERBehavioral;

