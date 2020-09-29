;Exploring the aritmetic and logic operators

mov al, 10
mov bl, 20

;note that the destination register for all arithmetic and logic operators is always the first
;operand.
;This convention makes instruction sizes shorter at the expense of obliterating the first 
;operand.
;if the value in the first operand will be needed later, it should be copied somewhere prior
;to the execution of an arithmetic or logic operator.

add al, 05  ; add immediate (opcode = B0)
add al, bl  ; register add (opcode = A0)

; Again here, we see that the mnemonics are the same (i.e., add) but the opcodes tell
; us that these are distinct machine code instructions - with different pathways
; through the cpu

; the assembler determines from the from instruction what the opcode should be
; the fetch-decode-execute process determines from the opcode what the instruction is

; the story is similar for all of the other arithmetic and logic instructions
end
