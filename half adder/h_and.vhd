Library ieee;
use ieee.std_logic_1164.all;

entity h_and is
  port(
    P, Q : in bit;
    R : out bit
  );
end h_and;

Architecture and_h of h_and is
begin
  R <= P and Q;
end and_h;
