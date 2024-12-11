mov eax, [ebx + ecx*4 + 0x10]

The error is in accessing the memory location [ebx + ecx*4 + 0x10].  If the value of ebx + ecx*4 is outside the bounds of the allocated memory, this will result in a segmentation fault.