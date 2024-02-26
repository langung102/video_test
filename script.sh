gst-launch-1.0 v4l2src device=/dev/video11 io-mode=4 ! video/x-raw,format=NV12,width=720,height=576,framerate=15/1 ! xvimagesink > /dev/null 2>&1

gst-launch-1.0 v4l2src device=/dev/video11 io-mode=4 ! video/x-raw,format=NV12,width=720,height=576,framerate=15/1 ! videoconvert ! x264enc ! mp4mux ! filesink location=output.mp4
