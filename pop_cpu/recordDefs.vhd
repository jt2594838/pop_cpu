--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package recordDefs is

type ALUFuncRec is record
	sigSLL : STD_LOGIC_VECTOR (2 downto 0);
	sigSRL : STD_LOGIC_VECTOR (2 downto 0);
	sigSRA : STD_LOGIC_VECTOR (2 downto 0);
	sigADD : STD_LOGIC_VECTOR (2 downto 0);
	sigSUB : STD_LOGIC_VECTOR (2 downto 0);
	sigAND : STD_LOGIC_VECTOR (2 downto 0);
	sigOR  : STD_LOGIC_VECTOR (2 downto 0);
	sigCMP : STD_LOGIC_VECTOR (2 downto 0);
end record;

constant ALUFunc : ALUFuncRec := (
					sigSLL => "000",
					sigSRL => "001",
					sigSRA => "010",
					sigADD => "011",
					sigSUB => "100",
					sigAND => "101",
					sigOR  => "110",
					sigCMP => "111");

type ALUSrc0Rec is record
	rx : STD_LOGIC_VECTOR (1 downto 0);
	ry : STD_LOGIC_VECTOR (1 downto 0);
	zero : STD_LOGIC_VECTOR (1 downto 0);
	SP : STD_LOGIC_VECTOR (1 downto 0);
end record;					

constant ALUSrc0 : ALUSrc0Rec := (
					ry => "00",
					SP => "01",
					rx => "10",
					zero => "11");
					
type ALUSrc1Rec is record
	imm : STD_LOGIC_VECTOR (2 downto 0);
	rx  : STD_LOGIC_VECTOR (2 downto 0);
	ry  : STD_LOGIC_VECTOR (2 downto 0);
	IH  : STD_LOGIC_VECTOR (2 downto 0);
	PC  : STD_LOGIC_VECTOR (2 downto 0);
end record;

constant ALUSrc1 : ALUSrc1Rec := (
					imm => "000",
					rx  => "001",
					ry  => "010",
					IH  => "011",
					PC  => "100");

end recordDefs;

package body recordDefs is

 
end recordDefs;
