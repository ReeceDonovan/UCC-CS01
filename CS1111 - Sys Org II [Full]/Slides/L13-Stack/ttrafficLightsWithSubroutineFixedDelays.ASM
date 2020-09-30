;Traffic Lights with a fixed duration delay using subroutines

start:
  mov al, 84 	; 84 corresponds to Red-Green on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  call 70 	;
  
  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  call 70
  
  mov al, 30 	; 30 corresponds to Green-Red on the Traffic Lightsout 01
  out 01
  call 70

  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  call 70
jmp start

org 70 ; 
 mov bl, fa 	  ; initialize bl with a value representing the delay
 loop:
 inc bl
 cmp bl, 00    ; check to see if bl has overflowed 
 jnz loop     ; if not continue incrementing and checking
 ret

end