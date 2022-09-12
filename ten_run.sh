#!/bin/bash
#for n in 0 1 2 3 4 5 6 7 8 9; do
#  cmd="sh multi_gpu.sh 32 1600 "${n}" ./yolov5x6.pt v5x6"
#  echo $cmd
#  sh multi_gpu.sh 32 1600 ${n} ./yolov5x6.pt v5x6
#done

# 0
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_0_pretrain_v5x6_wh1600_b32_ap426/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold0 \
--task test \
--save-txt \
--save-conf \
--half

# 1
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_1_pretrain_v5x6_wh1600_b32_ap430/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold1 \
--task test \
--save-txt \
--save-conf \
--half

# 2
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_2_pretrain_v5x6_wh1600_b32_ap430/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold2 \
--task test \
--save-txt \
--save-conf \
--half

# 3
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_3_pretrain_v5x6_wh1600_b32_ap414/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold3 \
--task test \
--save-txt \
--save-conf \
--half

# 4
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_4_pretrain_v5x6_wh1600_b32_ap418/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold4 \
--task test \
--save-txt \
--save-conf \
--half

# 5
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_5_pretrain_v5x6_wh1600_b32_ap424/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold5 \
--task test \
--save-txt \
--save-conf \
--half

# 6
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_6_pretrain_v5x6_wh1600_b32_ap424/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold6 \
--task test \
--save-txt \
--save-conf \
--half

# 7
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_7_pretrain_v5x6_wh1600_b32_ap429/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold7 \
--task test \
--save-txt \
--save-conf \
--half

# 8
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_8_pretrain_v5x6_wh1600_b32_ap420/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold8 \
--task test \
--save-txt \
--save-conf \
--half

# 9
python3 val.py \
--data data/VisDrone.yaml \
--weights /home/ubuntu/workspace/github/yolo/yolov5/A100/Strategy/TenFold/x6_tenfold_9_pretrain_v5x6_wh1600_b32_ap420/weights/best.pt \
--batch-size 8 \
--imgsz 1920 \
--name fold9 \
--task test \
--save-txt \
--save-conf \
--half