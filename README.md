# Assembly Code Bug: Segmentation Fault

This repository demonstrates a common error in assembly programming: accessing memory outside of allocated bounds.  The bug involves the instruction `mov eax, [ebx + ecx*4 + 0x10]`, which could cause a segmentation fault if the calculated address is invalid.

## Bug Description
The `mov` instruction attempts to read data from a memory location calculated using base pointer (ebx), index (ecx), and an offset (0x10). If the sum of ebx, ecx*4, and 0x10 points to a non-accessible memory area, a segmentation fault occurs. 

## Bug Solution
The solution involves adding checks to ensure the computed memory address falls within the valid range before performing the memory access.  This requires careful attention to the data structures being used and their boundaries in memory.