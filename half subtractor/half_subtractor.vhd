library ieee;
use ieee.std_logic_1164.all;

entity aashirbad_fs is
  port(
    A, B, C : in bit;
    difference, borrow : out bit
  );
end aashirbad_fs;

architecture fs_aashirbad of aashirbad_fs is
signal S1, S2, S3, S4, S5 : bit;

component fs_xor is
  port(
    E, F : in bit;
    G : out bit
  );
end component;

component fs_not is
  port(
    H : in bit;
    I : out bit
  );
end component;

component fs_and is
  port(
    X, Y : in bit;
    Z : out bit
  );
end component;

component fs_or is
  port(
    M, N : in bit;
    O : out bit
  );
end component;

begin
  X1 : fs_xor port map(A, B, S1);
  X2 : fs_xor port map(S1, C, difference);
  X3 : fs_not port map(A, S2);
  X4 : fs_and port map(S2, B, S3);
  X5 : fs_not port map(S1, S4);
  X6 : fs_and port map(S4, C, S5);
  X7 : fs_or port map(S3, S5, borrow);
end fs_aashirbad;
