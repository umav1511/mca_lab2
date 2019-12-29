#!/bin/sh
for cf in '1000:1000' '1100:1100' '1111:1111'
do
for a in 2 4 8
do
for b in 2 4 8
do
  rm configuration.rvex
  sed s/'$config'/$cf/ AnotherCONFIGURATIONBASE > configuration.rvex
  sed -i -e s/'$st'/$a/ configuration.rvex
  b=$b'k'
  sed -i -e s/'$ic'/$b/ configuration.rvex
  sed -i -e s/'$dc'/$b/ configuration.rvex
  rm -rf src
  rm -rf results
  rm -rf data
  yes y | configure
  rm src/main-core0-ctxt0.c
  rm src/main-core0-ctxt1.c
  rm src/config.compile
  cp base/1r2v/* src/
  yes y | make run
  cp -r results script_result
  mv script_result/results script_result/results.$cf.$a.$b
done
done
done
