#!/bin/bash
python train.py --config=yolact_plus_cityscapes_config_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/yolact_plus_resnet50_54_800000.pth --save_interval=3750
python train.py --config=yolact_plus_cityscapes_config_last_layer_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/yolact_plus_resnet50_54_800000.pth --save_interval=3750
python train.py --config=yolact_plus_cityscapes_config_no_backbone_no_fpn_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/yolact_plus_resnet50_54_800000.pth --save_interval=3750
python train.py --config=yolact_plus_cityscapes_config_retrain_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/resnet50-19c8e357.pth --save_interval=3750
python train.py --config=yolact_plus_cityscapes_config_preserve_aspect_ratio_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/yolact_plus_resnet50_54_800000.pth --save_interval=3750
python train.py --config=yolact_plus_cityscapes_config_half_anchor_box_scales_resnet50 --transfer_learning_allowed=True --start_iter=0 --resume=weights/yolact_plus_resnet50_54_800000.pth --save_interval=3750