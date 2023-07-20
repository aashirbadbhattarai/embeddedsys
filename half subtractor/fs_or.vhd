library ieee;
use ieee.std_logic_1164.all;

entity fs_or is
  port(
    M, N : in bit;
    O : out bit
  );
end fs_or;

architecture or_fs of fs_or is
begin
  O <= M and N;
end or_fs;
