# LinuxScript
一些Linux脚本
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

## Zero Trust Tunnels for Linux_ARM64
- 利用Tunnels实现内网穿透访问的脚本
```
curl -L --output cloudflared.deb https://ls.fanmingming.com/arm64/cloudflared.deb && 

sudo dpkg -i cloudflared.deb && 

sudo cloudflared service install eyJhIjoiZjdjZTk4YjkzNTI3Zjg4OTRlY2Q0YTQwM2ZmYjUyMTUiLCJ0IjoiNzNiMTdlOGMtNzJhNi00MTYxLTllMWQtY2YyMWMyMmRiNDgwIiwicyI6Ik9XWTBZbVUzTW1FdE56ZzVZeTAwTWpRMExUZ3pOekl0TldFeFpEbGlabU5sTVdWaiJ9
```
