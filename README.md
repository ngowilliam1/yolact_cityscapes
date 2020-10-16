# You Only Look At CoefficienTs++ For Cityscapes


### Requirements

- conda
- Python 3.7 or higher

### Installation

```bash
# Clone this repository
git clone https://github.com/ngowilliam1/yolact_cityscapes.git
cd yolact_cityscapes

# If you need to install conda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# Create env with requirements
conda env create -f environment.yml

# activate the conda environment
source activate yolact-env-city

```

### To Obtain Dataset
Place in ./data/ and extract the following: 
[Cityscapes Annotations and Images](https://drive.google.com/file/d/1YvRTX4aZCcuQYenPFbRFRkclpa7K2F3R/view?usp=sharing)

### To Train Using Cityscapes
```bash
# Trains using the resnet50 backbone from scratch
python train.py --config=yolact_resnet50_cityscapes_config --resume=weights/resnet50-19c8e357.pth

# Trains using the resnet50 backbone from scratch with batch size = 4
python train.py --config=yolact_resnet50_cityscapes_config --resume=weights/resnet50-19c8e357.pth --batch_size=4

# Trains using yolact resnet50 by fine_tuning the whole network
python train.py --config=yolact_resnet50_cityscapes_config --resume=weights/yolact_resnet50_54_800000.pth --start_iter=0 --transfer_learning_allowed=True

#Trains using yolact resnet50 by only training prediction/last layer
python train.py --config=yolact_resnet50_cityscapes_config_last_layer --resume=weights/yolact_resnet50_54_800000.pth --start_iter=0 --transfer_learning_allowed=True

# Trains using yolact++ resnet50 with batch size of 4 by fine_tuning the whole network
python train.py --config=yolact_plus_resnet50_cityscapes_config --resume=weights/yolact_plus_resnet50_54_800000.pth --start_iter=0 --transfer_learning_allowed=True
```