asect  0x00          # Start a new section at memory address 0x00

    ldi r0, a        # Load the address of label 'a' into register r0
    ld  r0, r0       # Load the value at the address stored in r0 into r0 (r0 now contains the value of 'a')
    ldi r1, b        # Load the address of label 'b' into register r1
    ld  r1, r1       # Load the value at the address stored in r1 into r1 (r1 now contains the value of 'b')
    add r0, r1       # Add the value in r1 (value of 'b') to r0 (value of 'a'), result stored in r1
    ldi r0, c        # Load the address of label 'c' into r0
    st  r0, r1       # Store the result (sum of 'a' and 'b') from r1 into the memory address pointed to by r0 ('c')

    halt             # Halt the execution of the program

a:
  dc 15              # Define a constant 15 at label 'a' (input data for testing)
b:
  dc 26              # Define a constant 26 at label 'b' (input data for testing)
c:
  ds 1               # Reserve 1 byte of storage at label 'c' (where the output will be stored)
end                  # End of the program
