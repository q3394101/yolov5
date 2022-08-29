#!/bin/bash
set -x
batch=${1:-16}
fold=${2:-0}
imgsz=${3:-1600}
data="data/folds/ten/"${fold}"/VisDrone"${fold}".yaml"
weights="./yolov5s.pt"

echo $data

python3 train.py \
  --batch ${batch} \
  --data $data \
  --weights $weights \
  --device 0 \
  --imgsz $imgsz \
  --cfg models/yolov5s.yaml \
  --hyp data/hyps/hyp.scratch-low.yaml
