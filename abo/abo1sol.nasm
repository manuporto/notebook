BITS 32

		jmp short msg

code:
		; ssize_t write()
		pop ecx ;msg address
		xor eax, eax
		mov al, 4 ;write syscall
		xor ebx, ebx
		inc ebx ;STDOUT
		xor edx, edx
		mov dl, 7 ;msg length
		int 0x80 ;do syscall

		; void exit(int status)
		mov al, 1 ;exit syscall
		dec ebx ;status = 0
		int 0x80 ;do syscall

msg:	call code
		db "youWin!"
		
