Library ieee;
use ieee.std_logic_1164.all;

entity aashirbad_FA is
  port(
    A, B, C : in bit;
    sum, carry : out bit
  );
end aashirbad_FA;

architecture FA_aashirbad of aashirbad_FA is
signal S1, S2, S3 : bit;

component f_xor is
  port(
    X, Y : in bit;
    Z : out bit
  );
end component;

component f_and is
  port(
    P, Q : in bit;
    R : out bit
  );
end component;

component f_or is
  port(
    G, H : in bit;
    I : out bit
  );
end component;

begin
  X1: f_xor port map(A, B, S1);
  X2 : f_xor port map(S1, C, sum);
  X3 : f_and port map(S1, C, S2);
  X4 : f_and port map(A, B, S3);
  X5 : f_or port map(S2, S3, carry);
end FA_aashirbad;
  
