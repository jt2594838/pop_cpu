----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:23 11/20/2016 
-- Design Name: 
-- Module Name:    InsFetcher - Behavioral 
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

entity InsFetcher is
	Port(	Ram2OE : out  STD_LOGIC;
			Ram2WE : out  STD_LOGIC;
			Ram2EN : out  STD_LOGIC;
			Ram2Addr : inout STD_LOGIC_VECTOR(15 downto 0);
			Ram2Data : in STD_LOGIC_VECTOR(15 downto 0);
			addr : in STD_LOGIC_VECTOR(15 downto 0);
			ins : out STD_LOGIC_VECTOR(15 downto 0);
			rwPause : in STD_LOGIC);
			
end InsFetcher;

architecture Behavioral of InsFetcher is
	
begin
	process(addr)
	begin
		Ram2OE <= '0';
		Ram2WE <= '1';
		Ram2EN <= '0';
		Ram2Addr <= addr;
	end process;
	
	process(Ram2Data, rwPause)
	begin
		if(rwPause = '1') then
			ins <= "0000000000000000";
		else 
			ins <= Ram2Data;
		end if;
	end process;

end Behavioral;

