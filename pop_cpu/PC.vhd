----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:48:07 11/20/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- 说明：clk时钟信号，一旦跳变，根据当前是否已经初始化、当前是否处在暂停阶段来给PCout赋值
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
	Port(	clk : in STD_LOGIC;
            rwPause : in STD_LOGIC;
			passerPause: in STD_LOGIC;
			PCin: in STD_LOGIC_VECTOR(17 downto 0);
			PCout: out STD_LOGIC_VECTOR(17 downto 0));
end PC;

architecture PCBehavioral of PC is
    variable inited: boolean := false;
	variable paused: boolean := false;
    variable lastPC: STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000";
begin
	process(rwPause, passerPause)
	begin
		if(rwPause = '0' and passerPause = '0') then
            paused := true;
        else 
            paused := false;
        end if;
	end process;

    process(clk)
    begin
        if(clk'event and clk = 1) then
            if(inited = false) then
                PCout <= "000000000000000000";
                lastPC := "000000000000000000";
            elsif(inited = true and paused = false) then
                PCout <= PCin;
                lastPC := PCin;
            elsif(inited = true and paused = true) then
                PCout <= lastPC;
            end if;
        end if;
    end process;
end PCBehavioral;

