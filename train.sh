train_mod=coco_1_iou
if [ $train_mod = coco_1 ]
then 
        CUDA_VISIBLE_DEVICES=0,1,2,3 python train_net.py \
                --config configs/coco_supervision/faster_rcnn_R_50_FPN_sup1_run1.yaml \
                --num-gpus 4 \
                MULTI_STEP 2 \
                OUTPUT_DIR output/coco_1 \
                SOLVER.CHECKPOINT_PERIOD 5000 \
                SOLVER.IMG_PER_BATCH_LABEL 16 SOLVER.IMG_PER_BATCH_UNLABEL 16
elif [ $train_mod = coco_1_iou ]
then 
        CUDA_VISIBLE_DEVICES=0,1,2,3 python train_net.py \
                --config configs/coco_supervision/faster_rcnn_R_50_FPN_sup1_run1.yaml \
                --num-gpus 4 \
                MULTI_STEP 2 \
                OUTPUT_DIR output/coco_1_iou \
                SOLVER.CHECKPOINT_PERIOD 5000 \
                SOLVER.IMG_PER_BATCH_LABEL 16 SOLVER.IMG_PER_BATCH_UNLABEL 16
fi