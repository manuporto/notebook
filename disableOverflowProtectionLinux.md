
1. Check default [Address space layout randomization (ASLR)](https://en.wikipedia.org/wiki/Address_space_layout_randomization) value and disable it.
  1. Check the default value and take note of it:
      
      ```
      sudo cat /proc/sys/kernel/randomize_va_space
      ```
  2. Then disable it:
      
      ```
      sudo bash -c 'echo 0 > /proc/sys/kernel/randomize_va_space'
      ```
  3. When you are done working, remember to set it back to it's default value.
  
2. The [Buffer overflow protection](https://en.wikipedia.org/wiki/Buffer_overflow_protection) and the [Data Execution Prevention](https://en.wikipedia.org/wiki/Data_Execution_Prevention) have to be disabled when compiling with `gcc`.
  For disabling the Buffer overflow protection, the `-fno-stack-protector` flag has to be added when compiling. Likewise, for disabling the Data Execution Prevention, the `-z` flag has to be added with the `execstack` as it's argument. For example, if the file `overflow.c` it's being compiled without protection, the command should look like this:
  
  ```
  gcc overflow.c -o overflow -fno-stack-protector -z execstack
  ```
  
