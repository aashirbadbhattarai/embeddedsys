library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
  port(
    A, B, Cin : in bit;
    Cout, sum : out bit
  );
end fulladder;

architecture adder of fulladder is
begin
  sum <= A xor B xor Cin;
  Cout <= (A and B) or (B and Cin) or (A and Cin);
end adder;
