Library ieee;
use ieee.std_logic_1164.all;

entity f_or is
  port(
    G, H : in bit;
    I : out bit
  );
end f_or;

architecture or_f of f_or is
begin
  I <= G or H;
end or_f;

