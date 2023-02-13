; exit call x86 with status code 66 - 6 bytes   by 0bfxgh0st*
;
; nasm -f elf exit66_x86.asm
; ld -o exit66_x86 exit66_x86.o -m elf_i386
; objdump -d exit66_x86 |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

mov al,1
mov bl,66
int 0x80
