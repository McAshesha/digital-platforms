asect  0x00               # Start a new section at memory address 0x00

    ldi r1, a             # Load the address of label 'a' into register r1
    ld r1, r1             # Load the value from memory address 'a' into r1 (r1 = mem[a])

    ldi r2, b             # Load the address of label 'b' into register r2
    st r2, r1             # Store the value in r1 (which is mem[a]) into memory address 'b'

    ldi r0, b             # Load the address of label 'b' into register r0 (used for the robot to read output)
    halt                  # Halt the execution of the program

asect 0x10                # Start a new section at memory address 0x10

a:
  dc 15                   # Define constant 15 at label 'a' (input data for testing)
b:
  ds 1                    # Reserve 1 byte of storage at label 'b' (for storing output)

end                       # End of the program
