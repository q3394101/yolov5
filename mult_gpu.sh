#!/bin/bash
set -x
batch=${1:-8}
imgsz=${2:-2880}
weights=${3:-""}
pretrain=${4:-None}
data="data/tianchi.yml"

if [ ! -n "$weights" ]; then
  echo "you have not input a weights!"
  weights="\"\""
else
  echo "Using weights \"$weights\" for pretrain"
fi

name="pretrain_"${pretrain}"_wh"${imgsz}"_b"${batch}"_apxxx"
echo $name

python -m torch.distributed.run \
  --nproc_per_node 4 \
  train.py \
  --batch $batch \
  --data $data \
  --weights $weights \
  --device 0,1,2,3 \
  --imgsz $imgsz \
  --cfg models/hub/yolov5l6.yaml \
  --hyp data/hyps/hyp.scratch-low.yaml \
  --name $name \
  --sync-bn \
  --epochs 300
