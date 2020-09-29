loop:
  mov al, 84 	; 84 corresponds to Red-Green on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  jmp delay1 	;
  continue1: 	;
    mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
    out 01     	; Write to Traffic Lights Port
    mov al, 30 	; 30 corresponds to Green-Red on the Traffic Lightsout 01
    mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
    out 01     	; Write to Traffic Lights Port
    jmp loop

delay1:
  mov bl, 0 	  ; initialize bl with a value
  loop1:
    inc bl
    cmp bl, 00    ; check to see if bl has overflowed 
    jnz loop1     ; if not continue incrementing and checking
    jmp continue1 ; if so, return to where the delay was called 
end