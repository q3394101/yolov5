import os

for i in range(4,10):
    j = i+1
    print('Start!')
    s0 = f"sed -s -i 's/00{i}/00{j}/' data/tianchi.yml"
    os.system(s0)
    s1 = f'bash -c "sh mult_gpu.sh 12 2880 yolov5l6.pt v5l6f{j}"'
    os.system(s1)
    print('End!')
