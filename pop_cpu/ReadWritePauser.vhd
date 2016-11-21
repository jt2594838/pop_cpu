----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:32:16 11/20/2016 
-- Design Name: 
-- Module Name:    ReadWritePauser - Behavioral 
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

entity ReadWritePauser is
    Port ( inMEMWrite : in  STD_LOGIC;
           inMEMRead : in  STD_LOGIC;
           inAddr : in  STD_LOGIC_VECTOR (15 downto 0);
           readWritePause : out  STD_LOGIC);
end ReadWritePauser;

architecture Behavioral of ReadWritePauser is

begin

process(inMEMWrite, inMEMRead, inAddr)
begin
	if( (inMEMWrite = '1' or inMEMRead = '1') and inAddr < "1000000000000000") then
		readWritePause <= '1';
	else
		readWritePause <= '0';
	end if;
end process;

end Behavioral;

