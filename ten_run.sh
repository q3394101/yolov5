#!/bin/bash
for n in 0 1 2 3 4 5 6 7 8 9; do
  cmd="sh multi_gpu.sh 32 1600 "${n}" ./yolov5x6.pt v5x6"
  echo $cmd
  sh multi_gpu.sh 32 1600 ${n} ./yolov5x6.pt v5x6
done
