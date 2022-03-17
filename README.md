# yolov5-opencv-cpp
use c++ opencv dnn module to lanuch yolov5 onnx model
# 说明
参考[yolov5-opencv-cpp-python](https://github.com/doleron/yolov5-opencv-cpp-python)
- 使用该项目时发现，官方提供的coco数据集进行检测，代码可以正常进行，但是使用自己训练的模型和类型文件时会出现段错误。
- 经过调试发现，`detect`函数中存在两个magic number。一个是85，还有一个25200。
- 原项目中的issues已经提到了这个问题但是并没有修改，关于这两个magic number的解释详情见该[博客](https://medium.com/mlearning-ai/detecting-objects-with-yolov5-opencv-python-and-c-c7cf13d1483c)。具体来说`rows`代表一共有`25200`个结果需要进行提取判断，`dimensions`代表每个结果中共有`5+className.size()`个数据。
- 对`detect`函数进行修改，可以正常使用自己训练的模型和类型文件进行识别。