library ieee;
use ieee.std_logic_1164.all;

entity mux_and is
  port(
    A, B : in bit;
    C : out bit
  );
end mux_and;

architecture and_mux of mux_and is
begin
  C <= A and B;
end and_mux;
