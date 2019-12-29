#!/bin/sh
rm configuration.rvex
sed s/'$st'/$1/ CONFIGURATIONBASE > configuration.rvex
sed -i -e s/'$ic'/$2'k'/ configuration.rvex
sed -i -e s/'$dc'/$3'k'/ configuration.rvex
rm -rf src
rm -rf results
rm -rf data
make clean || true
yes y | configure
yes y | make run
cp -r results script_result
mv script_result/results script_result/results.'11000000'.$1.$2'k'.$3'k'
  
