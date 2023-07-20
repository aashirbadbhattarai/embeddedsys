Library ieee;
use ieee.std_logic_1164.all;

entity f_xor is
  port(
    X, Y : in bit;
    Z : out bit
  );
end f_xor;

architecture xor_f of f_xor is
begin
  Z <= X xor Y;
end xor_f;

