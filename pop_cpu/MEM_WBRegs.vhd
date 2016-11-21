----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:35 11/20/2016 
-- Design Name: 
-- Module Name:    MEM_WBRegs - Behavioral 
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

entity MEM_WBRegs is
    Port ( inRst : in  STD_LOGIC_VECTOR (15 downto 0);
           inBuffer : in  STD_LOGIC_VECTOR (15 downto 0);
           inWBDes : in  STD_LOGIC_VECTOR (3 downto 0);
           inWBSrc : in  STD_LOGIC;
           inRegWrite : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
			  pause : in STD_LOGIC;
			  clear : in STD_LOGIC;
			  intSave : in STD_LOGIC;         --ÖÐ¶Ï±£´æ
			  intRecover : in STD_LOGIC;    --ÖÐ¶Ï»Ö¸´
           outRst : out  STD_LOGIC_VECTOR (15 downto 0);
           outBuffer : out  STD_LOGIC_VECTOR (15 downto 0);
           outWBDes : out  STD_LOGIC_VECTOR (3 downto 0);
           outWBSrc : out  STD_LOGIC;
           outRegWrite : out  STD_LOGIC);
end MEM_WBRegs;

architecture Behavioral of MEM_WBRegs is

begin

process(clk)
variable tempWBDes : STD_LOGIC_VECTOR (3 downto 0);
variable tempWBSrc : STD_LOGIC;
variable tempRegWrite : STD_LOGIC;
variable tempRst :  STD_LOGIC_VECTOR (15 downto 0);
variable tempBuffer :  STD_LOGIC_VECTOR (15 downto 0);
variable intWBDes : STD_LOGIC_VECTOR (3 downto 0);
variable intWBSrc : STD_LOGIC;
variable intRegWrite : STD_LOGIC;
variable intRst :  STD_LOGIC_VECTOR (15 downto 0);
variable intBuffer :  STD_LOGIC_VECTOR (15 downto 0);
begin
if(clk'event and clk = '1') then
		if(intSave = '1')then
			intWBDes := tempWBDes;
			intWBSrc := tempWBSrc;
			intRegWrite := tempRegWrite;
			intRst := tempRst;
			intBuffer := tempBuffer;
			outWBDes <= "0000";
			outWBSrc <= '0';
			outRegWrite <= '0';
			outRst <= (others => '0');
			outBuffer <= (others => '0');
		elsif(intRecover = '1')then
			tempWBDes := intWBDes;
			tempWBSrc := intWBSrc;
			tempRegWrite := intRegWrite;
			tempRst := intRst;
			tempBuffer := intBuffer;
			outWBDes <= intWBDes;
			outWBSrc <= intWBSrc;
			outRegWrite <= intRegWrite;
			outRst <= intRst;
			outBuffer <= intBuffer;
		elsif(clear = '1') then
			outWBDes <= "0000";
			outWBSrc <= '0';
			outRegWrite <= '0';
			outRst <= (others => '0');
			outBuffer <= (others => '0');
			tempWBDes := "0000";
			tempWBSrc := '0';
			tempRegWrite := '0';
			tempRst := (others => '0');
			tempBuffer := (others => '0');
		elsif(pause = '1') then
			outWBDes <= tempWBDes;
			outWBSrc <= tempWBSrc;
			outRegWrite <= tempRegWrite;
			outRst <= tempRst;
			outBuffer <= tempBuffer;
		elsif(pause = '0') then
			tempWBDes := inWBDes;
			tempWBSrc := inWBSrc;
			tempRegWrite := inRegWrite;
			tempRst := inRst;
			tempBuffer := inBuffer;
			outWBDes <= inWBDes;
			outWBSrc <= inWBSrc;
			outRegWrite <= inRegWrite;
			outRst <= inRst;
			outBuffer <= inBuffer;
		end if;
	end if;
end process;

end Behavioral;

