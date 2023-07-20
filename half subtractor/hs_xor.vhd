library ieee;
use ieee.std_logic_1164.all;

entity fs_xor is
  port(
    E, F : in bit;
    G : out bit
  );
end fs_xor;

architecture xor_hs of fs_xor is
begin
  G <= E xor F;
end xor_hs;
