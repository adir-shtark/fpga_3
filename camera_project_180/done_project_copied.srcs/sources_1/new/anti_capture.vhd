----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Description: Captures the pixels coming from the OV7670 camera and 
--              Stores them in block RAM
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity anti_capture is
    Port ( pclk_anti  : in   STD_LOGIC;
           vsync_anti : in   STD_LOGIC;
           href_anti  : in   STD_LOGIC;
           d_anti     : in   STD_LOGIC_VECTOR (7 downto 0);
           addr_anti  : out  STD_LOGIC_VECTOR (18 downto 0);
           dout_anti  : out  STD_LOGIC_VECTOR (11 downto 0);
           we_anti    : out  STD_LOGIC);
end anti_capture;

architecture Behavioral of anti_capture is
   signal d_latch      : std_logic_vector(15 downto 0) := (others => '0');
   signal address      : STD_LOGIC_VECTOR(18 downto 0) := "1001011000000000000";
   signal address_next : STD_LOGIC_VECTOR(18 downto 0) := "1001011000000000000";
   signal wr_hold      : std_logic_vector(1 downto 0)  := (others => '0');
   
begin
   addr_anti <= address;
   process(pclk_anti)
   begin
      if rising_edge(pclk_anti) then
         -- This is a bit tricky href starts a pixel transfer that takes 3 cycles
         --        Input   | state after clock tick   
         --         href   | wr_hold    d_latch           d                 we address  address_next
         -- cycle -1  x    |    xx      xxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxx  x   xxxx     xxxx
         -- cycle 0   1    |    x1      xxxxxxxxRRRRRGGG  xxxxxxxxxxxxxxxx  x   xxxx     addr
         -- cycle 1   0    |    10      RRRRRGGGGGGBBBBB  xxxxxxxxRRRRRGGG  x   addr     addr
         -- cycle 2   x    |    0x      GGGBBBBBxxxxxxxx  RRRRRGGGGGGBBBBB  1   addr     addr+1

         if vsync_anti = '1' then 
            address <= "1001011000000000000";
            address_next <= "1001011000000000000";
            wr_hold <= (others => '0');
         else
-- This should be a different order, but seems to be GRB!
--            dout    <= d_latch(11 downto 10) & d_latch(11 downto 10) & d_latch(15 downto 12) & d_latch(9 downto 8) & d_latch(9 downto 8); 
            dout_anti    <= d_latch(15 downto 12) & d_latch(10 downto 7) & d_latch(4 downto 1); 
            address <= address_next;
            we_anti      <= wr_hold(1);
            wr_hold <= wr_hold(0) & (href_anti and not wr_hold(0));
            d_latch <= d_latch( 7 downto  0) & d_anti;

            if wr_hold(1) = '1' then
               address_next <= std_logic_vector(unsigned(address_next)-1);
            end if;

         end if;
      end if;
   end process;
end Behavioral;