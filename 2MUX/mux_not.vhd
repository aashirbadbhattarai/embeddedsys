library ieee;
use ieee.std_logic_1164.all;

entity mux_not is
  port(
    P : in bit;
    Q : out bit
  );
end mux_not;

architecture not_mux of mux_not is
begin
  Q <= not P;
end not_mux;


