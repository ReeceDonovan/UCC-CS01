; Writing all characers in the ASCII table onto the VDU

mov al, 00
mov bl, c0 ; bl is initialized with the start address in the VDU
start:
  mov [bl], al ; register indirect addrtessing
  inc al
  inc bl
jmp start
end


