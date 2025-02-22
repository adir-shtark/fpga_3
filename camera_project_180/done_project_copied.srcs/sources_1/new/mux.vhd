----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2023 09:56:42 PM
-- Design Name: 
-- Module Name: mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
port(
           clk     : in  STD_LOGIC;
           addr_a  : in  STD_LOGIC_VECTOR (18 downto 0);
           dout_a  : in  STD_LOGIC_VECTOR (11 downto 0);
           we_a    : in  STD_LOGIC;
           
           addr_b  : in  STD_LOGIC_VECTOR (18 downto 0);
           dout_b  : in  STD_LOGIC_VECTOR (11 downto 0);
           we_b    : in  STD_LOGIC;
           
           addr_o  : out  STD_LOGIC_VECTOR (18 downto 0);
           dout_o  : out  STD_LOGIC_VECTOR (11 downto 0);
           we_o    : out  STD_LOGIC;
           
           decide : in  STD_LOGIC
           );
end mux;


architecture Behavioral of mux is

    signal addr     :std_logic_vector(18 downto 0) := (others => '0');
    signal dout     :std_logic_vector(11 downto 0) := (others => '0');
    signal we       :std_logic := '0';
    signal decide_m :std_logic := '0';

begin

    process(clk)
    begin
        if rising_edge(decide) then
            decide_m <= not decide_m;
        end if;
    end process;
    
    process(clk)
    begin
        if (decide_m = '0') then
            addr <= addr_a;
            dout <= dout_a;
            we <= we_a;      
        else
            addr <= addr_b;
            dout <= dout_b;
            we <= we_b;
        end if;  
            
    end process;
    
    addr_o <= addr;
    dout_o <= dout;
    we_o <= we;
    

end Behavioral;
