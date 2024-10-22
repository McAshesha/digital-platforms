asect  0x00               # Start a new section at memory address 0x00

    ldi r1, a             # Load the address of label 'a' into register r1
    ld r1, r1             # Load the value at the memory address 'a' into r1 (r1 = 15)

    ldi r2, b             # Load the address of label 'b' into register r2
    ld r2, r2             # Load the value at the memory address 'b' into r2 (r2 = 14)

    move r1, r3           # Move the value in r1 (15) into r3
    move r2, r1           # Move the value in r2 (14) into r1
    move r3, r2           # Move the value in r3 (15) into r2

    push r1               # Push the value in r1 (14) onto the stack
    push r2               # Push the value in r2 (15) onto the stack

    ldsa r0, 0            # Load the address of the current stack pointer into r0
    halt                  # Halt the execution of the program

a: dc 15                  # Define constant 15 at label 'a'
b: dc 14                  # Define constant 14 at label 'b'

end                       # End of the program
