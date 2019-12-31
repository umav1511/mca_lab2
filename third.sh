#!/bin/sh
for cf in '1000:1000' '1100:1100' '1111:1111'
do
for a in 2 4 8
do
for b in 2 4 8
do
b=$b'k'
file="script_result/results.$cf.$a.$b.$b"
file_t="script_result/results.$cf.$a.$b"

echo $file
if [[ ! -d "$file" ]] && [[ ! -d "$file_t" ]];then
  rm configuration.rvex
  sed s/'$config'/$cf/ AnotherCONFIGURATIONBASE > configuration.rvex
  sed -i -e s/'$st'/$a/ configuration.rvex
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
fi
done
done
done
