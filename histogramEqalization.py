import cv2
from pathlib import Path

images_dir = Path.cwd() / "data/cityscapes/images"
output_dir = Path.cwd() / "data/cityscapes/images_equalized"

if not output_dir.exists():
    output_dir.mkdir()

for image in images_dir.iterdir():
    print(image)
    im = cv2.imread(str(image))
    img_yuv = cv2.cvtColor(im, cv2.COLOR_BGR2YUV)
    img_yuv[:,:,0] = cv2.equalizeHist(img_yuv[:,:,0])
    img_output = cv2.cvtColor(img_yuv, cv2.COLOR_YUV2BGR)
    cv2.imwrite(str(output_dir / image.name), img_output)