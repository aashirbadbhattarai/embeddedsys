library ieee;
use ieee.std_logic_1164.all;

entity mul_and is
  port(
    C, D : in bit;
    E : out bit
  );
end mul_and;

architecture and_mul of mul_and is
begin
  E <= C and D;
end and_mul;
