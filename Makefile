yolov5-test:
	g++ -o yolov5-test src/yolov5.cpp `pkg-config --cflags --libs opencv4`

.PHONY:yolov5-test

clean:
	rm -f yolov5-test
