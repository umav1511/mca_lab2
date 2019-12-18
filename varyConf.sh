#!/bin/sh
for a in 2 4 8
do
for b in `seq 1 3`
do
  rm configuration.mm
  sed s/'$ISSUE'/$a/ LAB2_BASE > configuration.mm
  sed -i -e s/'$MUL'/$b/ configuration.mm
  run compress -O3
  mv output-compress.c/ta.log.000 LAB2/compress/
  mv LAB2/compress/ta.log.000 LAB2/compress/ta.log.000.$a.$b
  run convolution_7x7 -O3
  mv output-convolution_7x7.c/ta.log.000 LAB2/convolution/
  mv LAB2/convolution/ta.log.000 LAB2/convolution/ta.log.000.$a.$b
  run median -O3
  mv output-median.c/ta.log.000 LAB2/median/
  mv LAB2/median/ta.log.000 LAB2/median/ta.log.000.$a.$b
  run bcnt -O3
  mv output-bcnt.c/ta.log.000 LAB2/bcnt/
  mv LAB2/bcnt/ta.log.000 LAB2/bcnt/ta.log.000.$a.$b
done
done

