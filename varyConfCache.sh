#!/bin/sh
for a in 2 4
do
for b in 2 4 8
do
  rm configuration.rvex
  sed s/'$st'/$a/ CONFIGURATIONBASE > configuration.rvex
  b=$b'k'
  sed -i -e s/'$ic'/$b/ configuration.rvex
  sed -i -e s/'$dc'/$b/ configuration.rvex
  rm -rf src
  rm -rf results
  rm -rf data
  yes y | configure
  yes y | make run
  cp -r results script_result
  mv script_result/results script_result/results.'11000000'.$a.$b
done
done
