library ieee;
use ieee.std_logic_1164.all;

entity fs_and is
  port(
    X, Y : in bit;
    Z : out bit
  );
end fs_and;

architecture and_fs of fs_and is
begin
  Z <= X and Y;
end and_fs;
