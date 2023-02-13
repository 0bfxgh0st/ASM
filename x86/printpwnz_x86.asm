; print 'PwNz' msg x86 - 23 bytes   by 0bfxgh0st*
;
; nasm -f elf printpwnz_x86.asm
; ld -o printpwnz_x86 printpwnz_x86.o -m elf_i386
; objdump -d printpwnz_x86 |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor ebx,ebx
xor ecx,ecx
xor edx,edx

push 0x7a4e7750
mov ecx,esp
mov dl,4

mov al,4
int 0x80

mov al,1
int 0x80
