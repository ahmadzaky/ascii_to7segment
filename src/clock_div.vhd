----------------------------------------------------------------------------------
-- Engineer: AZR
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: 
-- Target Devices: xc7a35t
-- Tool Versions: 16.1
-- Description: core
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity clock_div is
	port(                            
            clk_i    : in std_logic;                                              
            rstn_i   : in std_logic;     
            clk_o    : out std_logic       
         
    );
end entity clock_div;

architecture rtl of clock_div is


signal led_array   : std_logic_vector(7 downto 0);




begin 

    process(rstn_i, clk_i)
    begin
        if rstn_i = '0' then
            led_array <= (others => '0');
        elsif clk_i'event and clk_i = '0' then 
            led_array <= ascii_i;
        end if;
    end process;
  

    process(rstn_i, clk_i)
    begin
        if rstn_i = '0' then
            a_o   <= '0';  
            b_o   <= '0';
            c_o   <= '0';
            d_o   <= '0';
            e_o   <= '0';
            f_o   <= '0';
            g_o   <= '0';
            dp_o  <= '0';
        elsif clk_i'event and clk_i = '0' then 
            a_o   <= led_array(0);  
            b_o   <= led_array(1);
            c_o   <= led_array(2);
            d_o   <= led_array(3);
            e_o   <= led_array(4);
            f_o   <= led_array(5);
            g_o   <= led_array(6);
            dp_o  <= led_array(7);
        end if;
    end process;
  
    



end architecture;
		
