
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
   
	  // Run the median benchmark and log performance.
    median_main();
    log_perfcount("median");
  
// Run the compress benchmark and log performance.
    compress_main();
    log_perfcount("compress");
     
    // Run the bcnt benchmark and log performance.
    bcnt_main();
    log_perfcount("bcnt");
    
}
