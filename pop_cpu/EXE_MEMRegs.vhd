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
			  inRA : in  STD_LOGIC_VECTOR (15 downto 0);
           inRx : in  STD_LOGIC_VECTOR (15 downto 0);
           inRy : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
			  pause : in STD_LOGIC;
			  clear : in STD_LOGIC;
			  intSave : in STD_LOGIC;
			  intRecover : in STD_LOGIC;
           outWBDes : out  STD_LOGIC_VECTOR (3 downto 0);
           outWBSrc : out  STD_LOGIC;
           outMEMRead : out  STD_LOGIC;
           outMEMWrite : out  STD_LOGIC;
           outMEMSrc : out  STD_LOGIC_VECTOR (1 downto 0);
           outRegWrite : out  STD_LOGIC;
           outRst : out  STD_LOGIC_VECTOR (15 downto 0);
			  outRA : out  STD_LOGIC_VECTOR (15 downto 0);
           outRx : out  STD_LOGIC_VECTOR (15 downto 0);
           outRy : out  STD_LOGIC_VECTOR (15 downto 0));
end EXE_MEMRegs;

architecture Behavioral of EXE_MEMRegs is

begin
process(clk)
variable tempWBDes : STD_LOGIC_VECTOR (3 downto 0);
variable tempWBSrc : STD_LOGIC;
variable tempMEMRead : STD_LOGIC;
variable tempMEMWrite : STD_LOGIC;
variable tempMEMSrc : STD_LOGIC_VECTOR (1 downto 0);
variable tempRegWrite : STD_LOGIC;
variable tempRst :  STD_LOGIC_VECTOR (15 downto 0);
variable tempRA,tempRx,tempRy :  STD_LOGIC_VECTOR (15 downto 0);
variable intWBDes : STD_LOGIC_VECTOR (3 downto 0);
variable intWBSrc : STD_LOGIC;
variable intMEMRead : STD_LOGIC;
variable intMEMWrite : STD_LOGIC;
variable intMEMSrc : STD_LOGIC_VECTOR (1 downto 0);
variable intRegWrite : STD_LOGIC;
variable intRst :  STD_LOGIC_VECTOR (15 downto 0);
variable intRA,intRx,intRy :  STD_LOGIC_VECTOR (15 downto 0);
begin
	if(clk'event and clk = '1') then
		if(intSave = '1')then
			intWBDes := tempWBDes;
			intWBSrc := tempWBSrc;
			intMEMRead := tempMEMRead;
			intMEMWrite := tempMEMWrite;
			intMEMSrc := tempMEMSrc;
			intRegWrite := tempRegWrite;
			intRst := tempRst;
			intRA := tempRA;
			intRx := tempRx;
			intRy := tempRy;
			outWBDes <= "0000";
			outWBSrc <= '0';
			outMEMRead <= '0';
			outMEMWrite <= '0';
			outMEMSrc <= "00";
			outRegWrite <= '0';
			outRst <= (others => '0');
			outRA <= (others => '0');
			outRx <= (others => '0');
			outRy <= (others => '0');
		elsif(intRecover = '1')then
			tempWBDes := intWBDes;
			tempWBSrc := intWBSrc;
			tempMEMRead := intMEMRead;
			tempMEMWrite := intMEMWrite;
			tempMEMSrc := intMEMSrc;
			tempRegWrite := intRegWrite;
			tempRst := intRst;
			tempRA := intRA;
			tempRx := intRx;
			tempRy := intRy;
			outWBDes <= intWBDes;
			outWBSrc <= intWBSrc;
			outMEMRead <= intMEMRead;
			outMEMWrite <= intMEMWrite;
			outMEMSrc <= intMEMSrc;
			outRegWrite <= intRegWrite;
			outRst <= intRst;
			outRA <= intRA;
			outRx <= intRx;
			outRy <= intRy;
		elsif(clear = '1') then
			outWBDes <= "0000";
			outWBSrc <= '0';
			outMEMRead <= '0';
			outMEMWrite <= '0';
			outMEMSrc <= "00";
			outRegWrite <= '0';
			outRst <= (others => '0');
			outRA <= (others => '0');
			outRx <= (others => '0');
			outRy <= (others => '0');
			tempWBDes := "0000";
			tempWBSrc := '0';
			tempMEMRead := '0';
			tempMEMWrite := '0';
			tempMEMSrc := "00";
			tempRegWrite := '0';
			tempRst := (others => '0');
			tempRA := (others => '0');
			tempRx := (others => '0');
			tempRy := (others => '0');
		elsif(pause = '1') then
			outWBDes <= tempWBDes;
			outWBSrc <= tempWBSrc;
			outMEMRead <= tempMEMRead;
			outMEMWrite <= tempMEMWrite;
			outMEMSrc <= tempMEMSrc;
			outRegWrite <= tempRegWrite;
			outRst <= tempRst;
			outRA <= tempRA;
			outRx <= tempRx;
			outRy <= tempRy;
		elsif(pause = '0') then
			tempWBDes := inWBDes;
			tempWBSrc := inWBSrc;
			tempMEMRead := inMEMRead;
			tempMEMWrite := inMEMWrite;
			tempMEMSrc := inMEMSrc;
			tempRegWrite := inRegWrite;
			tempRst := inRst;
			tempRA := inRA;
			tempRx := inRx;
			tempRy := inRy;
			outWBDes <= inWBDes;
			outWBSrc <= inWBSrc;
			outMEMRead <= inMEMRead;
			outMEMWrite <= inMEMWrite;
			outMEMSrc <= inMEMSrc;
			outRegWrite <= inRegWrite;
			outRst <= inRst;
			outRA <= inRA;
			outRx <= inRx;
			outRy <= inRy;
		end if;
	end if;
end process;



end Behavioral;

