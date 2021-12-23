LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CONTROL_UNIT IS
    PORT (
        set_flush : IN STD_LOGIC;
        op_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        pc_write, inst_type, flush : OUT STD_LOGIC;
        set_carry, branch, alu_src : OUT STD_LOGIC;
        Rs_en, Rt_en, mem_read : OUT STD_LOGIC;
        mem_write, interrupt_en : OUT STD_LOGIC;
        stack, load, reg_write, in_en, out_en : OUT STD_LOGIC;
        alu_op, flag_en, stack_op : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE CONTROL_UNIT OF CONTROL_UNIT IS
BEGIN
    PROCESS (set_flush, op_code) IS
    BEGIN
        IF set_flush = '1' THEN
            flush <= '1';
        END IF;
        IF op_code = "00001" THEN
            inst_type <= '0';
            flush <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            reg_write <= '0';
            flag_en <= "000";
        ELSIF op_code = "00010" THEN
            pc_write <= '0';
            inst_type <= '0';
            flush <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            reg_write <= '0';
            flag_en <= "000";
        ELSIF op_code = "00011" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '1';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "000";
            flag_en <= "001";
        ELSIF op_code = "00100" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "001";
            flag_en <= "110";
        ELSIF op_code = "00101" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "010";
            flag_en <= "110";
        ELSIF op_code = "00110" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '1';
            flag_en <= "000";
        ELSIF op_code = "00111" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '1';
            out_en <= '0';
            flag_en <= "000";
        ELSIF op_code = "01000" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
        ELSIF op_code = "01001" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "100";
            flag_en <= "111";
        ELSIF op_code = "01010" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "101";
            flag_en <= "111";
        ELSIF op_code = "01011" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "110";
            flag_en <= "110";
        ELSIF op_code = "01100" THEN
            inst_type <= '1';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "100";
            flag_en <= "111";
        ELSIF op_code = "10000" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '1';
            interrupt_en <= '0';
            stack <= '1';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "000";
        ELSIF op_code = "10001" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '1';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '1';
            load <= '1';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "001";
        ELSIF op_code = "10010" THEN
            inst_type <= '1';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            alu_src <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '1';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '1';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "111";
            flag_en <= "000";
        ELSIF op_code = "10011" THEN
            inst_type <= '1';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '1';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            load <= '1';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "100";
            flag_en <= "000";
        ELSIF op_code = "10100" THEN
            inst_type <= '1';
            flush <= '0';
            set_carry <= '0';
            branch <= '0';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '1';
            interrupt_en <= '0';
            stack <= '0';
            load <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "100";
            flag_en <= "000";
        ELSIF op_code = "11000" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            flag_en <= "100";
        ELSIF op_code = "11001" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            flag_en <= "010";
        ELSIF op_code = "11010" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            flag_en <= "001";
        ELSIF op_code = "11011" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '0';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            flag_en <= "000";
        ELSIF op_code = "11100" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '1';
            interrupt_en <= '0';
            stack <= '1';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "011";
        ELSIF op_code = "11101" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '1';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '1';
            load <= '1';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "010";
        ELSIF op_code = "11110" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '0';
            mem_write <= '1';
            interrupt_en <= '1';
            stack <= '1';
            reg_write <= '0';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "101";
        ELSIF op_code = "11111" THEN
            inst_type <= '0';
            flush <= '0';
            set_carry <= '0';
            branch <= '1';
            Rs_en <= '0';
            Rt_en <= '0';
            mem_read <= '1';
            mem_write <= '0';
            interrupt_en <= '0';
            stack <= '1';
            load <= '1';
            reg_write <= '1';
            in_en <= '0';
            out_en <= '0';
            alu_op <= "011";
            flag_en <= "000";
            stack_op <= "100";
        END IF;
    END PROCESS;
END CONTROL_UNIT;