asect  0x00               # Start a new section at memory address 0x00

    ldi r1, 0b00000001    # Load the immediate binary value 00000001 (1 in decimal) into register r1
    ldi r2, 0x02          # Load the immediate hexadecimal value 0x02 (2 in decimal) into register r2
    ldi r3, 3             # Load the immediate decimal value 3 into register r3

    push r3               # Push the value of r3 (3) onto the stack
    push r2               # Push the value of r2 (2) onto the stack
    push r1               # Push the value of r1 (1) onto the stack
    ldsa r0, 0            # Load the stack address of the base pointer (0) into register r0
    halt                  # Halt the execution of the program

end                       # End of the program
