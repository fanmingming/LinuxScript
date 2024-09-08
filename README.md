![LinuxScript](https://socialify.git.ci/fanmingming/LinuxScript/image?description=1&forks=1&issues=1&language=1&name=1&owner=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Auto)
## stream.sh
- 【无人值守直播】将本地指定目录下的MP4文件循环推送到B站或Youtube等直播平台的脚本(适用于Ubuntu、Debian和RaspberryPi OS等Linux系统)
```
//安装screen
sudo apt install screen
//创建一个窗口
screen -S stream
//下载脚本
wget https://ls.fanmingming.com/stream.sh
//执行脚本
bash stream.sh
```

## hls.sh
- 通过ffmpeg利用Web环境实现拉取任意直播流并推流的脚本(适用于Ubuntu、Debian和RaspberryPi OS等Linux系统)
```
//安装screen
sudo apt install screen
//创建一个窗口
screen -S hls
//下载脚本
wget https://ls.fanmingming.com/hls.sh
//执行脚本
bash hls.sh
```
