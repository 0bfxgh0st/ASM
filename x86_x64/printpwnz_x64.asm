; print 'PwNz' msg x64 - 21 bytes   by 0bfxgh0st*
;
; nasm -f elf64 printpwnz_x64.asm
; ld -o printpwnz_x64 printpwnz_x64.o -m elf_x86_64
; objdump -d printpwnz_x64 |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor rdi,rdi

push 0x7a4e7750
mov dl,4
mov rsi,rsp

mov al,1
syscall

mov al,60
syscall
