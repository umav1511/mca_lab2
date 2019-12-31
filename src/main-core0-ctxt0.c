
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
volatile char *record_ptr = (volatile char *)0x3F000000;

int main(void) {
    
    // Log the performance counters for debugging purposes. This times the C
    // runtime initialization code. Note that the logging takes time as well;
    // you might want to remove them for your final measurements. The server
    // and simulation will always give you a total cycle count.
    log_perfcount("init");
	// Run the bcnt benchmark and log performance.
    CR_CRR=0x01;
	bcnt_main();
    log_perfcount("bcnt"); 
	CR_CRR=0x11;

    
}
