asect  0x00               # Start a new section at memory address 0x00

	ldi r1, 16           # Load the immediate decimal value 16 into register r1
	ldi r2, a            # Load the address of label 'a' into register r2
	st r2, r1            # Store the value in r1 (16) at the memory address 'a'

	ldi r1, 0x32         # Load the immediate hexadecimal value 0x32 (which is 50 in decimal) into register r1
	ldi r2, b            # Load the address of label 'b' into register r2
	st r2, r1            # Store the value in r1 (50) at the memory address 'b'

	ldi r1, 0b00000011   # Load the immediate binary value 00000011 (which is 3 in decimal) into register r1
	ldi r2, c            # Load the address of label 'c' into register r2
	st r2, r1            # Store the value in r1 (3) at the memory address 'c'

    ldi r0, a            # Load the address of label 'a' into register r0 (used for the robot to read output)
    halt                 # Halt the execution of the program

asect 0x20                # Start a new section at memory address 0x20

a: ds 1                   # Reserve 1 byte of memory at label 'a' (for storing a value)
b: ds 1                   # Reserve 1 byte of memory at label 'b' (for storing a value)
c: ds 1                   # Reserve 1 byte of memory at label 'c' (for storing a value)

end                       # End of the program
