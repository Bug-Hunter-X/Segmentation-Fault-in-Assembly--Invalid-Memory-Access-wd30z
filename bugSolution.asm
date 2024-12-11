section .data
array dd 1, 2, 3, 4, 5 ; Example array
array_size equ ($ - array) ; Size of array

section .text
global _start

_start:
; ... other code ...

; Check if index is within bounds before accessing the array
mov ecx, index ; Assuming 'index' register contains the index
mov eax, array_size
cmp ecx, eax
jge out_of_bounds ; Jump to out_of_bounds if index >= array_size
mov ebx, array
mov eax, [ebx + ecx*4] ; Access array element after bounds check
; ... further code ...
jmp exit

out_of_bounds:
; Handle out of bounds error
; Example: Exit with an error code
mov eax, 1 ; sys_exit
mov ebx, 1 ; error code
int 0x80

exit:
mov eax, 1 ; sys_exit
mov ebx, 0 ; exit code 0
int 0x80