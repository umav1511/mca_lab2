#!/bin/sh
for a in 2 4 8
do
for b in 2 4 8 16 32 64
do
for c in 2 4 8 16 32
do
  rm configuration.rvex
  sed s/'$st'/$a/ CONFIGURATIONBASE > configuration.rvex
  b=$b'k'
  sed -i -e s/'$ic'/$b/ configuration.rvex
  c=$c'k'
  sed -i -e s/'$dc'/$c/ configuration.rvex
  rm -rf src
  rm -rf results
  rm -rf data
  yes y | configure
  yes y | make run
  cp -r results script_result
  mv script_result/results script_result/results.'11000000'.$a.$b.$c
done
done
done
