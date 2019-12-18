
// Declarations for the benchmark main() functions.
#include "benchmarks.h"

// If you want, you can use the struct defined in this file for inter-core
// communication through memory. You should not need this unless you are doing
// really fancy things though.
#include "intercore.h"

// Debug output functions (puts, etc.; NO printf).
#include <record.h>

// Core control register definitions.
#include <rvex.h>

// This variable is used by the debug message recorder. It must be initialized
// to 0x3F000000 + global_context_index * 0x100000.
volatile char *record_ptr = (volatile char *)0x3F100000;

int main(void) {
    
    // NOTE: after reset, this context is not assigned any computational
    // resources. So any code here will not run automatically! To use this
    // context, you need to give a reconfiguration command in context 0 of
    // this core. Refer to r-VEX.pdf.
    
    // This context/core currently does not do anything. You should insert your own
    // code here by moving benchmarks from core 0/context 0.
    
}
