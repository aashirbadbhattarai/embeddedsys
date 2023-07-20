library ieee;
use ieee.std_logic_1164.all;

entity hs_not is
  port(
    H : in bit;
    I : out bit
  );
end hs_not;

architecture not_hs of hs_not is
begin
  I <= not H;
end not_hs;
