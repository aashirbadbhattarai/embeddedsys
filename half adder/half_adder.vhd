Library ieee;
use ieee.std_logic_1164.all;

entity aashirbad_HA is
  port(
    A, B : in bit;
    sum, carry : out bit
  );
end aashirbad_HA;

Architecture HA_aashirbad of aashirbad_HA is
component h_xor is
  port(
    X, Y : in bit;
    Z : out bit
  );
end component;
component h_and is
  port(
    P, Q : in bit;
    R : out bit
  );
end component;

begin
  X1 : h_xor port map(A, B, sum);
  X2 : h_and port map(A, B, carry);
end HA_aashirbad; 
