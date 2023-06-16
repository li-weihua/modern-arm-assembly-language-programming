/*++
Macro Description:

    This macro emits the assembler directives to annotate a new function.

Arguments:

    FunctionName - Supplies the name of the function.

--*/

        .macro FUNCTION_ENTRY FunctionName

        .p2align 2
#if defined(__APPLE__)
        .globl  _\FunctionName\()
_\FunctionName\():
#else
        .globl  \FunctionName\()
        .type   \FunctionName\(),%function
\FunctionName\():
#endif

        .endm
