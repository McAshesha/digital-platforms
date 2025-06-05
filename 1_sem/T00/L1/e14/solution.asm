asect  0x00               # Start a new section at memory address 0x00

    ldi r1, a             # Load the address of label 'a' into register r1
    ld r1, r1             # Load the value from memory address 'a' into r1 (r1 = mem[a])

    ldi r2, b             # Load the address of label 'b' into register r2
    ld r2, r2             # Load the value from memory address 'b' into r2 (r2 = mem[b])

    sub r1, r2            # Subtract the value in r1 (mem[a]) from the value in r2 (mem[b]), store result in r2
    ldi r3, c             # Load the address of label 'c' into register r3
    st r3, r2             # Store the result of the subtraction (mem[b] - mem[a]) in memory address 'c'

    ldi r0, c             # Load the address of label 'c' into register r0 (used for the robot to read the output)
    halt                  # Halt the execution of the program

asect 0x10                # Start a new section at memory address 0x10

a:
  dc 7                    # Define the constant value 7 at label 'a' (input data for testing)
b:
  dc 9                    # Define the constant value 9 at label 'b' (input data for testing)
c:
  ds 1                    # Reserve 1 byte of storage at label 'c' (for storing the output)

end                       # End of the program
