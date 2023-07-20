library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
  port(
    A0, A1, S0 : in bit;
    Y : out bit
  );
end mux2to1;

architecture aashirbad_mux of mux2to1 is
component mux_and is
  port(
    A, B : in bit;
    C : out bit
  );
end component;

component mux_or is
  port(
    X, Y : in bit;
    Z : out bit
  );
end component;

component mux_not is
  port(
    P : in bit;
    Q : out bit
  );
end component;

signal S1, S2, S3: bit; 

begin
  X1: mux_not port map(S0, S1);
  X2: mux_and port map(S1, A0, S2);
  X3: mux_and port map(S0,A1, S3);
  X4: mux_or port map(S2, S3, Y);
end aashirbad_mux;
