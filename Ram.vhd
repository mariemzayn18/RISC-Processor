LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM IS
	GENERIC (n : INTEGER := 16);
	PORT (
		clk, write_mem,mem_Read : IN STD_LOGIC;
		data_in : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		address : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END RAM;

ARCHITECTURE RAM1 OF RAM IS
	TYPE ram_type IS ARRAY (0 TO 2 ** 20) OF STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
	SIGNAL ram : ram_type;
BEGIN
	PROCESS (clk) IS
	BEGIN
		IF rising_edge(clk) THEN
			IF write_mem = '1' THEN
				ram(to_integer(unsigned(address))) <= data_in;
			elsif mem_Read = '1' then
				data_out <= ram(to_integer(unsigned(address)));		
			END IF;		
		END IF;
	END PROCESS;
END RAM1;