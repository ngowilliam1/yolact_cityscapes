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
# Trains using the resnet50 with batch size of 8
python train.py --config=yolact_resnet50_cityscapes_config

# Train from previous weights
python train.py --config=yolact_resnet50_cityscapes_config --resume=path/to/weights --batch_size=5

# Train from previous weights after interupt
python train.py --config=yolact_resnet50_cityscapes_config --resume=path/to/weights

# Run a single image
python eval.py  --trained_model=weights/name_of_trained_model.pth --config=yolact_resnet50_cityscapes_config --score_threshold=0.15 --top_k=5 --image=data/cityscapes/images/image_name.png:data/cityscapes/output/image_name.png

```