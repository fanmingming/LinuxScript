#!/bin/bash
# CSS服务器脚本 ubuntu 18.04 X64
# https://developer.valvesoftware.com/wiki/SteamCMD:zh-cn

sudo apt update -y;
sudo apt upgrade -y;

sudo apt install lib32gcc1 -y;
sudo apt install libc6-i386 -y;
sudo apt install lib32z1 -y;
sudo apt install lib32tinfo5 -y;
sudo apt install libsdl2-2.0-0:i386 -y;

sudo apt install screen -y;
sudo apt install wget -y;
sudo apt install gzip -y;
sudo apt install tar -y;
sudo apt install vim -y;

sudo useradd -m steam;
sudo runuser -l steam -c 'mkdir /home/steam/steamcmd;';
sudo runuser -l steam -c 'mkdir /home/steam/css;';

sudo runuser -l steam -c 'cd /home/steam/steamcmd && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -;';
sudo runuser -l steam -c '/home/steam/steamcmd/steamcmd.sh +force_install_dir /home/steam/css +login anonymous +app_update 232330 +quit;';

sudo runuser -l steam -c 'cd /home/steam/css/cstrike && wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz;';
sudo runuser -l steam -c 'cd /home/steam/css/cstrike && tar -zxvf mmsource-1.11.0-git1144-linux.tar.gz;';
sudo runuser -l steam -c 'cd /home/steam/css/cstrike && wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz;';
sudo runuser -l steam -c 'cd /home/steam/css/cstrike && tar -zxvf sourcemod-1.10.0-git6502-linux.tar.gz;';

sudo rm -rf /home/steam/css/cstrike/sourcemod-1.10.0-git6502-linux.tar.gz /home/steam/css/cstrike/mmsource-1.11.0-git1144-linux.tar.gz;

sudo runuser -l steam -c 'echo "\"(你的steamid填在这里)\"             \"99:z\"" >> /home/steam/css/cstrike/addons/sourcemod/configs/admins_simple.ini';

sudo runuser -l steam -c 'screen -S css /home/steam/css/srcds_run -console -game cstrike +map de_dust2;';
