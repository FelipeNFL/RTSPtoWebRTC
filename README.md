# FFmpeg to WebRTC

This project is an extension from https://github.com/deepch/RTSPtoWebRTC that makes a video capture using FFMpeg and transmites by WebRTC to front-end.

FFmpeg sends the broadcast to RTSP Simple Server (https://hub.docker.com/r/aler9/rtsp-simple-server) and the WebRTC gateway listens the RTSP Server.

All of these dependencies are installed in the docker's containers.

## Usage

You need to have installed Docker and Docker Compose to run the project. The command to initialize services is: ```docker-compose up```

To show the transmission is needed to open your browser in http://127.0.0.1:8083

By default, this project uses the device /dev/video0 (Linux). If you need to use other device, change the mapping in the docker-compose.yml and the script capture_video.sh.