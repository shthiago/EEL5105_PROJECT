library ieee;
use ieee.std_logic_1164.all;

entity ROM1 is
  port (address  : in std_logic_vector(3 downto 0);
		  data 	  : out std_logic_vector(7 downto 0));
end entity ROM1;

architecture behavioral1 of ROM1 is
  type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  constant my_Rom : mem := (
	0 => "11000101", -- C5
	1 => "10100111", -- A7
   2 => "00100111", -- 27
	3 => "11101111", -- EF
	4 => "10010110", -- 96
	5 => "10101010", -- AA
	6 => "10011100", -- 9C
	7 => "00110011", -- 33
	8 => "10001001", -- 89
	9 => "01011010"); --5A
begin
   process (address)
   begin
     case address is
       when "0000" => data <= my_rom(0);
       when "0001" => data <= my_rom(1);
       when "0010" => data <= my_rom(2);
       when "0011" => data <= my_rom(3);
       when "0100" => data <= my_rom(4);
       when "0101" => data <= my_rom(5);
       when "0110" => data <= my_rom(6);
       when "0111" => data <= my_rom(7);
       when "1000" => data <= my_rom(8);
       when "1001" => data <= my_rom(9);
       when others => data <= "00000000";
       end case;
  end process;
end architecture behavioral1;