asect  0x00            # Start a new section at memory address 0x00
	
    ldi r0, a          # Load the address of label 'a' into register r0
	ldi r1, 13         # Load the immediate value 13 into register r1
	st r0, r1          # Store the value in r1 (13) at the memory address pointed by r0 (address 'a')
	
	inc r0             # Increment the value in register r0, pointing it to the next memory address
	ldi r1, 0x45       # Load the immediate value 0x45 into register r1
	st r0, r1          # Store the value in r1 (0x45) at the new memory address pointed by r0
	
	inc r0             # Increment the value in register r0 to point to the next memory address
	ldi r1, 0b11001101 # Load the immediate binary value 11001101 into register r1
	st r0, r1          # Store the value in r1 (11001101) at the memory address pointed by r0
	
	inc r0             # Increment the value in register r0 to point to the next memory address
	ldi r1, "A"        # Load the ASCII value of character "A" into register r1
	st r0, r1          # Store the value in r1 (ASCII "A") at the memory address pointed by r0
	
	ldi r0, a          # Reload the original address of label 'a' into register r0 (optional depending on the context)
    halt               # Halt the execution of the program

a:
	ds 4               # Define storage (reserve space) for 4 bytes starting from address 'a'
	
	
asect 0x20             # Start a new section at memory address 0x20

dc 13, 0x45, 0b11001101, "A"  # Define constants: 13, 0x45, 11001101, and ASCII "A" in consecutive memory locations

end                    # End of the program
