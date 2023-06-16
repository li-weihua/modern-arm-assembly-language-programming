//-------------------------------------------------
//               Ch11_01_.s
//-------------------------------------------------

#include "asmmacro.h"

// extern "C" int IntegerAddSubA_(int a, int b int c);

            .text
            FUNCTION_ENTRY IntegerAddSubA_

// Calculate a + b - c
            add w3,w0,w1                            // w3 = a + b
            sub w0,w3,w2                            // w0 = a + b - c
            ret                                     // return to caller

// extern "C" long IntegerAddSubB_(long a, long b long c);

            FUNCTION_ENTRY IntegerAddSubB_

// Calculate a + b - c
            add x3,x0,x1                            // x3 = a + b
            sub x0,x3,x2                            // x0 = a + b - c
            ret                                     // return to caller

            .end
