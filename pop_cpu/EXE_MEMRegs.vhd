----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:11 11/20/2016 
-- Design Name: 
-- Module Name:    EXE_MEMRegs - Behavioral 
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

entity EXE_MEMRegs is
    Port ( inWBDes : in  STD_LOGIC_VECTOR (3 downto 0);
           inWBSrc : in  STD_LOGIC;
           inMEMRead : in  STD_LOGIC;
           inMEMWrite : in  STD_LOGIC;
           inMEMSrc : in  STD_LOGIC_VECTOR (1 downto 0);
           inRegWrite : in  STD_LOGIC;
           inRst : in  STD_LOGIC_VECTOR (15 downto 0);
           inPC : in  STD_LOGIC_VECTOR (15 downto 0);
           inRxNum : in  STD_LOGIC_VECTOR (2 downto 0);
           inRyNum : in  STD_LOGIC_VECTOR (2 downto 0);
           inRzNum : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
			  pause : in STD_LOGIC;
			  clear : in STD_LOGIC;
           outWBDes : out  STD_LOGIC_VECTOR (3 downto 0);
           outWBSrc : out  STD_LOGIC_VECTOR (0 downto 0);
           outMEMRead : out  STD_LOGIC;
           outMEMWrite : out  STD_LOGIC;
           outMEMSrc : out  STD_LOGIC_VECTOR (1 downto 0);
           outRegWrite : out  STD_LOGIC;
           outRst : out  STD_LOGIC_VECTOR (15 downto 0);
           outPC : out  STD_LOGIC_VECTOR (15 downto 0);
           outRxNum : out  STD_LOGIC_VECTOR (2 downto 0);
           outRyNum : out  STD_LOGIC_VECTOR (2 downto 0);
           outRzNum : out  STD_LOGIC_VECTOR (2 downto 0));
end EXE_MEMRegs;

architecture Behavioral of EXE_MEMRegs is

begin
process(inWBDes, inWBSrc, clk, pause, clear)
variable tempWBDes : STD_LOGIC_VECTOR (3 downto 0);
variable tempWBSrc : STD_LOGIC_VECTOR;
begin
	if(clk'event and clk = '1') then
	
	end if;
end process;

end Behavioral;

