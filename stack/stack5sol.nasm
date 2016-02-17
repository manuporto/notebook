BITS 32

		jmp short msg
code:	
		; ssize_t write()
		pop ecx
		xor eax, eax
		mov al, 4 ;Write syscall		
		xor ebx, ebx
		inc ebx ;STDOUT
		xor edx, edx
		mov dl, 8 ;msg length
		int 0x80 ;Do syscall
		
		; void exit(int status)
		mov al, 1 ;Exit syscall
		dec ebx ;Status = 0
		int 0x80 ;Do syscall

msg:	call code ;Call upwards to avoid null bytes
		db "youWin!"
			
