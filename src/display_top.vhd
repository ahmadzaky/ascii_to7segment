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

library work;
use work.ascii_7segment_package.all;


entity display_top is
	port(                            
            clk_i    : in std_logic;                                              
            rstn_i   : in std_logic;                                           
            a1_o      : out std_logic;                       
            b1_o      : out std_logic;                       
            c1_o      : out std_logic;                       
            d1_o      : out std_logic;                       
            e1_o      : out std_logic;                       
            f1_o      : out std_logic;                       
            g1_o      : out std_logic;                       
            dp1_o     : out std_logic;                                        
            a2_o      : out std_logic;                       
            b2_o      : out std_logic;                       
            c2_o      : out std_logic;                       
            d2_o      : out std_logic;                       
            e2_o      : out std_logic;                       
            f2_o      : out std_logic;                       
            g2_o      : out std_logic;                       
            dp2_o     : out std_logic     
         
    );
end entity display_top;

architecture rtl of display_top is

    component ascii_7segment 
        port(                            
            clk_i    : in std_logic;                                              
            rstn_i   : in std_logic;                         
            ascii_i  : in std_logic_vector(7 downto 0);                        
            a_o      : out std_logic;                       
            b_o      : out std_logic;                       
            c_o      : out std_logic;                       
            d_o      : out std_logic;                       
            e_o      : out std_logic;                       
            f_o      : out std_logic;                       
            g_o      : out std_logic;                       
            dp_o     : out std_logic);
    end component;
    
       type mem is array (0 to 1) of std_logic_vector(7 downto 0);
       signal display_buff : mem := (ch_F, ch_3);
    
begin
    
    D1 : ascii_7segment 
        port map(                            
            clk_i    => clk_i,                                              
            rstn_i   => rstn_i,                      
            ascii_i  => display_buff(0),                    
            a_o      => a1_o,              
            b_o      => b1_o,              
            c_o      => c1_o,              
            d_o      => d1_o,              
            e_o      => e1_o,              
            f_o      => f1_o,              
            g_o      => g1_o,              
            dp_o     => dp1_o 
            );
    
    D2 : ascii_7segment 
        port map(                            
            clk_i    => clk_i,                                              
            rstn_i   => rstn_i,                      
            ascii_i  => display_buff(1),                  
            a_o      => a2_o,              
            b_o      => b2_o,              
            c_o      => c2_o,              
            d_o      => d2_o,              
            e_o      => e2_o,              
            f_o      => f2_o,              
            g_o      => g2_o,              
            dp_o     => dp2_o 
            );
    

end architecture;