# Elaborate design to be able to apply SDC to top level
launch_runs -jobs 1 synth_1
wait_on_run -timeout 3200 synth_1
# Launch place and route
set_property strategy MapLogicOptParHighExtra [get_runs impl_1]
set_property steps.map.args.t 2 [get_runs impl_1]
set_property steps.bitgen.args.m true [get_runs impl_1]
launch_runs -jobs 1 impl_1 -to_step Bitgen
wait_on_run -timeout 1200 impl_1
