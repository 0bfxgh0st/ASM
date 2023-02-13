; exit call x64 with status code 66 - 7 bytes   by 0bfxgh0st*
;
; nasm -f elf64 exit66_x64.asm
; ld -o exit66_x64 exit66_x64.o -m elf_x86_64
; objdump -d exit66_x64 |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

mov dil, 66
mov al, 60
syscall
