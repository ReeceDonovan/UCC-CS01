;Traffic Lights with a various delay durations using subroutines

start:
  mov al, 84 	; 84 corresponds to Red-Green on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fa    ; initialize bl with a value representing the delay
  push bl       ; place parameter on stack
  call 70 	;
  
  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fe    ; initialize bl with a value representing the delay
  push bl       ; place parameter on stack
  call 70
  
  mov al, 30 	; 30 corresponds to Green-Red on the Traffic Lights
  out 01
  mov bl, ef    ; initialize bl with a value representing the delay
  push bl       ; place parameter on stack
  call 70

  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fe    ; initialize bl with a value representing the delay
  push bl       ; place parameter on stack
  call 70
jmp start

org 70 ; Subroutine
 pop cl  ;  this will be the return address.
 pop bl  ;  this is the parameter.
 push cl ;  put return address back on stack 
 loop:
 inc bl
 cmp bl, 00    ; check to see if bl has overflowed 
 jnz loop     ; if not continue incrementing and checking
 ret
end