----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:15:08 11/23/2016 
-- Design Name: 
-- Module Name:    AddressAdder - Behavioral 
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

entity AddressAdder is
	Port(	PCin: in STD_LOGIC_VECTOR(15 downto 0);
			address: in STD_LOGIC_VECTOR(15 downto 0);
			result: out STD_LOGIC_VECTOR(15 downto 0));
end AddressAdder;

architecture Behavioral of AddressAdder is

begin
	result <= address + PCin;

end Behavioral;

