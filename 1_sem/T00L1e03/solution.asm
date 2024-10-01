asect  0x00

    ldi r0, a	
    halt  
     
asect 0x10

a:
	dc "Hello World", 0

end
