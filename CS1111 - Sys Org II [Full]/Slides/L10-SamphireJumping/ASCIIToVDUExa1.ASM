; Writing all characers in the ASCII table onto the VDU

mov al, 00
start:
  mov [c0], al
  inc al
jmp start
end