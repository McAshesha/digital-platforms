asect  0x00                # Start a new section at memory address 0x00

    ldi r0, a             # Load the address of label 'a' into register r0
    halt                  # Halt the execution of the program

asect 0x10                 # Start a new section at memory address 0x10

a:
    dc "Hello World", 0    # Define the string "Hello World" followed by a null terminator (0) at label 'a'
end                        # End of the program
