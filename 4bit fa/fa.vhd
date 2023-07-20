library ieee;
use ieee.std_logic_1164.all;

entity fa4 is
  port(
    X, Y : in bit_vector(3 downto 0);
    Ci : in bit;
    S : out bit_vector(3 downto 0);
    Co : out bit
  );
end fa4;

architecture addr of fa4 is
component fulladder is
  port(
    A, B, Cin : in bit;
    Cout, sum : out bit
  );
end component;

Signal C : bit_vector(3 downto 1);

begin
  X1: fulladder port map(X(0), Y(0), Ci, C(1), S(0));
  X2 : fulladder port map(X(1), Y(1), C(1), C(2), S(1));
  X3 : fulladder port map(X(2), Y(2), C(2), C(3), S(2));
  X4 : fulladder port map(X(3), Y(3), C(2), Co, S(3));
end addr;
