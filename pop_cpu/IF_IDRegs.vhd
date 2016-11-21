----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:03 11/20/2016 
-- Design Name: 
-- Module Name:    IF_IDRegs - Behavioral 
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

entity IF_IDRegs is
		port(
			inPC : in STD_LOGIC_VECTOR (15 downto 0);
			inInst : in STD_LOGIC_VECTOR (15 downto 0);
			clk : in  STD_LOGIC;
			pause : in STD_LOGIC;
			clear : in STD_LOGIC;
			intSave : in STD_LOGIC;         --ÖÐ¶Ï±£´æ
			intRecover : in STD_LOGIC;    --ÖÐ¶Ï»Ö¸´
			outInst : out STD_LOGIC_VECTOR (15 downto 0);
			outPC : out STD_LOGIC_VECTOR (15 downto 0);
			outRxNum : out STD_LOGIC_VECTOR (2 downto 0);
			outRyNum : out STD_LOGIC_VECTOR (2 downto 0));
			
end IF_IDRegs;

architecture Behavioral of IF_IDRegs is

begin

process(clk)
variable tempPC : STD_LOGIC_VECTOR (15 downto 0);
variable tempInst :  STD_LOGIC_VECTOR (15 downto 0);
variable tempRxNum : STD_LOGIC_VECTOR (2 downto 0);
variable tempRyNum : STD_LOGIC_VECTOR (2 downto 0);
variable intPC : STD_LOGIC_VECTOR (15 downto 0);
variable intInst :  STD_LOGIC_VECTOR (15 downto 0);
variable intRxNum : STD_LOGIC_VECTOR (2 downto 0);
variable intRyNum : STD_LOGIC_VECTOR (2 downto 0);
begin
	if(clk'event and clk = '1') then
		if(intSave = '1') then
			intPC := tempPC;
			intInst := tempInst;
			intRxNum := tempRxNum;
			intRyNum := tempRyNum;
			outPC <= (others => '0');
			outInst <= (others => '0');
			outRxNum <= (others => '0');
			outRyNum <= (others => '0');
		elsif(intRecover = '1') then
			tempPc := intPC;
			tempInst := intInst;
			tempRxNum := intRxNum;
			tempRyNum := intRyNum;
			outPC <= intPC;
			outInst <= intInst;
			outRxNum <= intRxNum;
			outRyNum <= intRyNum;
		elsif(clear = '1') then
			tempPc := (others => '0');
			tempInst := (others => '0');
			tempRxNum := (others => '0');
			tempRyNum := (others => '0');
			outPC <= (others => '0');
			outInst <= (others => '0');
			outRxNum <= (others => '0');
			outRyNum <= (others => '0');
		elsif(pause = '1') then
			outPC <= tempPC;
			outInst <= tempInst;
			outRxNum <= tempRxNum;
			outRyNum <= tempRyNum;
		elsif(pause = '0') then
			tempPC := inPC;
			tempInst := inInst;
			tempRxNum := inInst(10 downto 8);
			tempRyNum := inInst(7 downto 5);
			outPC <= inPC;
			outInst <= inInst;
			outRxNum <= inInst(10 downto 8);
			outRyNum <= inInst(7 downto 5);
		end if;
	end if;
end process;

end Behavioral;

