Library ieee;
use ieee.std_logic_1164.all;

entity h_xor is
  port(
    X, Y : in bit;
    Z : out bit
  );
end h_xor;

Architecture xor_h of h_xor is
begin
  Z <= X xor Y;
end xor_h;
