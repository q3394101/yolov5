#!/bin/bash
set -x
batch=${1:-512}
imgsz=${2:-1600}
fold=${3:-0}
weights=${4:-""}
pretrain=${5:-None}
data="data/folds/ten/"${fold}"/VisDrone"${fold}".yaml"

if [ ! -n "$weights" ]; then
  echo "you have not input a weights!"
  weights="\"\""
else
  echo "Using weights \"$weights\" for pretrain"
fi

name="x6_tenfold_"${fold}"_pretrain_"${pretrain}"_wh"${imgsz}"_b"${batch}"_ap???"
echo $name

python -m torch.distributed.run \
  --nproc_per_node 4 \
  train.py \
  --batch $batch \
  --data $data \
  --weights $weights \
  --device 0,1,2,3 \
  --imgsz $imgsz \
  --cfg models/hub/yolov5x6.yaml \
  --hyp data/hyps/hyp.scratch-low.yaml \
  --name $name
