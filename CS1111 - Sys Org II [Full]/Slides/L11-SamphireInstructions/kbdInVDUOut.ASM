;Reading from the keyboard and writing to the VDU

start:
   mov bl, c0 ; start address of the VDU

loop:
   in 00     ; get input from the keyboard and place it into the al register
   mov [bl], al ; move the value in al to memory at address given in the bl register
   inc bl ; increment bl to point to the next VDU location
   jz start; jump to start if the result of inc bl is 0 - i.e., an address outside of the VDU
   jmp loop
end