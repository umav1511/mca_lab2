
library techmap;
use techmap.gencomp.all;

library ieee;
use ieee.std_logic_1164.all;

library rvex;
use rvex.common_pkg.all;
use rvex.core_pkg.all;
use rvex.cache_pkg.all;
use rvex.rvsys_grlib_pkg.all;

package config is
  -- Technology and synthesis options.
  constant CFG_FABTECH : integer := virtex6;
  constant CFG_MEMTECH : integer := virtex6;
  constant CFG_PADTECH : integer := virtex6;
  constant CFG_NOASYNC : integer := 0;
  constant CFG_SCAN : integer := 0;
  
  -- r-VEX processor core configuration.
  constant CFG_NRVEX : integer := 1;
  constant CFG_RVEX_CFG : rvex_grlib_generic_config_array(0 to CFG_NRVEX-1) := (
    
    -- Core 0 configuration.
    0 => rvex_grlib_cfg(
      core => rvex_cfg(
        numLanesLog2          => 3,
        numLaneGroupsLog2     => 1,
        numContextsLog2       => 1,
        bundleAlignLog2       => 2,
        multiplierLanes       => 2#11111111#,
        memLaneRevIndex       => 3,
        numBreakpoints        => 0,
        forwarding            => 1,
        limmhFromPreviousPair => 0,
        resetVectors          => (
          0 => X"00000000",
          1 => X"02000000",
          others => X"00000000"
        ),
        traceEnable           => 0,
        perfCountSize         => 4,
        cachePerfCountEnable  => 1
      ),
      core_valid => true,
      cache => cache_cfg(
        instrCacheLinesLog2   => 8,
        dataCacheLinesLog2    => 9
      ),
      cache_valid => true
    )
    
  );
  
  -- Total number of processors.
  constant CFG_NLG : integer := rvex_grlib_num_lane_groups(CFG_RVEX_CFG);
  constant CFG_NCTXT : integer := rvex_grlib_num_contexts(CFG_RVEX_CFG);
  
  -- AMBA settings.
  constant CFG_FPNPEN : integer := 0;
  constant CFG_AHBIO : integer := 16#FFF#;
  constant CFG_APBADDR : integer := 16#800#;
  constant CFG_AHB_MON : integer := 0;
  constant CFG_AHB_MONERR : integer := 0;
  constant CFG_AHB_MONWAR : integer := 0;
  constant CFG_AHB_DTRACE : integer := 0;
  
  -- Xilinx MIG DDR2 controller.
  constant CFG_MIG_DDR2 : integer := 1;
  --constant CFG_MIG_CLK4 : integer := 30; -- 40 MHz     (5.0ns sync with 200MHz DDR)
  --constant CFG_MIG_CLK4 : integer := 32; -- 37.5 MHz   (1.6ns sync with 200MHz DDR)
  --constant CFG_MIG_CLK4 : integer := 33; -- 36.36 MHz  (2.5ns sync with 200MHz DDR)
  --constant CFG_MIG_CLK4 : integer := 36; -- 33.33 MHz  (5.0ns sync with 200MHz DDR)
  --constant CFG_MIG_CLK4 : integer := 40; -- 30 MHz     (1.6ns sync with 200MHz DDR)
    constant CFG_MIG_CLK4 : integer := 60; -- 20 MHz     (5.0ns sync with 200MHz DDR)
  
end;
