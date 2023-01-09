#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 颜色选择
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
font="\033[0m"

ffmpeg_install(){
# 安装FFMPEG
read -p "安装FFmpeg才能正常推流,是否现在安装FFmpeg?(yes/no):" Choose
if [ $Choose = "yes" ];then
	sudo apt update
	sudo apt install ffmpeg
	ffmpeg -version
fi
if [ $Choose = "no" ]
then
    echo -e "${yellow} 你选择不安装FFmpeg! ${font}"
    sleep 2
fi
	}

stream_start(){
# 定义推流地址和推流码
read -p "输入你的推流地址和推流码(rtmp协议):" rtmp

# 判断用户输入的地址是否合法
if [[ $rtmp =~ "rtmp://" ]];then
	echo -e "${green} 推流地址输入正确,程序将进行下一步操作. ${font}"
  	sleep 2
	else  
  	echo -e "${red} 你输入的地址不合法,请重新运行程序并输入! ${font}"
  	exit 1
fi 

# 定义视频存放目录
read -p "输入视频存放目录 (格式支持mp4,并且要绝对路径,例如/opt/video):" folder

# 判断是否需要添加水印
read -p "是否需要为视频添加水印?水印位置默认在右上方(yes/no):" watermark
if [ $watermark = "yes" ];then
	read -p "输入你的水印图片存放绝对路径,例如/opt/image/watermark.jpg (格式支持jpg/png/bmp):" image
	echo -e "${yellow} 添加水印完成,程序将开始推流. ${font}"
	# 循环
	while true
	do
		cd $folder
		for video in $(ls *.mp4)
		do
		ffmpeg -re -i "$video" -i "$image" -filter_complex overlay=W-w-5:5 -c:v libx264 -c:a aac -b:a 192k -strict -2 -f flv ${rtmp}
		done
	done
fi
if [ $watermark = "no" ]
then
    echo -e "${yellow} 你选择不添加水印,程序将开始推流. ${font}"
    # 循环
	while true
	do
		cd $folder
		for video in $(ls *.mp4)
		do
		ffmpeg -re -i "$video" -c:v copy -c:a aac -b:a 192k -strict -2 -f flv ${rtmp}
		done
	done
fi
	}

# 停止推流
stream_stop(){
	screen -S stream -X quit
	killall ffmpeg
	}

# 开始菜单设置
echo -e "${yellow} FFmpeg无人值守循环推流 ${font}"
echo -e "${red} 请确定此脚本目前是在screen窗口内运行的! ${font}"
echo -e "${green} 1.安装FFmpeg ${font}"
echo -e "${green} 2.开始循环推流 ${font}"
echo -e "${green} 3.停止推流 ${font}"
start_menu(){
    read -p "请输入数字(1-3),选择你要进行的操作:" num
    case "$num" in
        1)
        ffmpeg_install
        ;;
        2)
        stream_start
        ;;
        3)
        stream_stop
        ;;
        *)
        echo -e "${red} 请输入正确的数字 (1-3) ${font}"
        ;;
    esac
	}

# 运行开始菜单
start_menu
