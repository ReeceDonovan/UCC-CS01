;Comments start with a ; and extend to the end of the line

;This program looks at the different opcodes produce from the same mnemonic
; Note that although they all use the same mnemonic (mov), at the machine level, they
;all have different opcodes. In other words, these are distinct machine code instructions. 
;That is different pathways are set up through the CPU to execute them. 

;move immediate
mov al, 40 ; opcode = D0

;register moves - these are illegal in Samphire
;mov al, bl

; indirect moves
mov bl, [03] ; (opcode = D1) move the value at memory address 03 into bl - this is a memory read 
mov [80], al ; (opcode = D2) move the value in al into memory address 30- this is a memory write

;the following two lines are added to set up the memory to illustrate the register
;indirect moves
mov dl, A0    ; move immediate
mov [40], dl  ; indirect move
 
;register indirect moves

mov cl, [al] ; (opcode = D3) move the value at memory address given in the al register into cl - read 
mov [dl], bl ; (opcode = D4) move the value in bl into memory at address given in the dl register - write

;note mov [cl], 80, for example, is not legal - value must be in a register before 
;putting it into memory
end





