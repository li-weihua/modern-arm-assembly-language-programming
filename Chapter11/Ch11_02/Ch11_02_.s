//-------------------------------------------------
//               Ch11_02_.s
//-------------------------------------------------


#include "asmmacro.h"

  .text
// extern "C" int IntegerMulA_(int a, int b);
// Calculate a * b and save result
  FUNCTION_ENTRY IntegerMulA_
  mul w0,w0,w1                        // a * b (32-bit)
  ret

// extern "C" long IntegerMulB_(long a, long b);
// Calculate a * b and save result
  FUNCTION_ENTRY IntegerMulB_
  mul x0,x0,x1                        // a * b (64-bit)
  ret

// extern "C" long IntegerMulC_(int a, int b);
// Calculate a * b and save result
  FUNCTION_ENTRY IntegerMulC_
  smull x0,w0,w1                      // signed 64-bit
  ret

// extern "C" unsigned long IntegerMulD_(unsigned int a, unsigned int b);
// Calculate a * b and save result
  FUNCTION_ENTRY IntegerMulD_
  umull x0,w0,w1                      // unsigned signed 64-bit
  ret
