library ieee;
use ieee.std_logic_1164.all;

entity mux_or is
  port(
    X, Y : in bit;
    Z : out bit
  );
end mux_or;

architecture or_mux of mux_or is
begin
  Z <= X or Y;
end or_mux;


