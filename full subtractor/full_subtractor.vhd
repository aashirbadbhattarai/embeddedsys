library ieee;
use ieee.std_logic_1164.all;

-- Full Subtractor Entity
entity aashirbad_fs is
    Port (
        A, B, Borrow_In : in  std_logic;
        Difference, Borrow_Out : out std_logic
    );
end entity aashirbad_fs;

-- Full Subtractor Architecture
architecture fs_aashirbad of aashirbad_fs is
begin
    -- Difference output logic
    Difference <= (A xor B) xor Borrow_In;

    -- Borrow-Out output logic
    Borrow_Out <= (not A and B) or (Borrow_In and (A xor B));
end architecture fs_aashirbad;

