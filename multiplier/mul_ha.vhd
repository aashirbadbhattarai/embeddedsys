library ieee;
use ieee.std_logic_1164.all;

entity mul_ha is
  port(
    M, N : in bit;
    O, P : out bit
  );
end mul_ha;

architecture ha_mul of mul_ha is
begin
  O <= M xor N;
  P <= M and N;
end ha_mul;
