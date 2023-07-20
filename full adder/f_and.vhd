Library ieee;
use ieee.std_logic_1164.all;

entity f_and is
  port(
    P, Q : in bit;
    R : out bit
  );
end f_and;

architecture and_f of f_and is
begin
  R <= P and Q;
end and_f;
