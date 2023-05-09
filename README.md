# LinuxScript
一些Linux脚本
## stream.sh
- 适用于Ubuntu、Debian和Raspberry Pi OS的循环直播推流脚本
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
- 适用于Ubuntu、Debian和Raspberry Pi OS的拉流推流脚本
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
```
curl -L --output cloudflared.deb https://ls.fanmingming.com/arm64/cloudflared.deb && 

sudo dpkg -i cloudflared.deb && 

sudo cloudflared service install eyJhIjoiZjdjZTk4YjkzNTI3Zjg4OTRlY2Q0YTQwM2ZmYjUyMTUiLCJ0IjoiNzNiMTdlOGMtNzJhNi00MTYxLTllMWQtY2YyMWMyMmRiNDgwIiwicyI6Ik9XWTBZbVUzTW1FdE56ZzVZeTAwTWpRMExUZ3pOekl0TldFeFpEbGlabU5sTVdWaiJ9
```
