; square.asm

section .data
msg_input db 'Enter a number: ', 0
msg_output db 'The square of the number is: ', 0

section .bss
num resb 4
square resd 1

section .text
global _start

_start:

; Print input prompt message
mov eax, 4
mov ebx, 1
lea ecx, [msg_input]
mov edx, 15
int 0x80

; Read user input
mov eax, 3
mov ebx, 0
lea ecx, [num]
mov edx, 4
int 0x80

; Convert input to integer
sub byte [num], 0x30
movzx eax, byte [num]

; Calculate the square
imul eax, eax
mov [square], eax

; Convert the square to a string
lea edi, [square_str]
mov ecx, 10
print_loop:
xor edx, edx
div ecx
add dl, '0'
dec edi
mov [edi], dl
test eax, eax
jnz print_loop

; Print output message
mov eax, 4
mov ebx, 1
lea ecx, [msg_output]
mov edx, 25
int 0x80

; Print the result
mov eax, 4
mov ebx, 1
mov ecx, edi
sub edx, edi
neg edx
int 0x80

; Exit
mov eax, 1
xor ebx, ebx
int 0x80

section .bss
square_str resb 12 ; Buffer for the square in string format
