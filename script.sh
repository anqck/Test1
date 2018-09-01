#!/bin/bash
#google colab script

#export env path
echo 'export PATH=/opt/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/tools/node/bin:/tools/google-cloud-sdk/bin' >> /root/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/lib64-nvidia'>> /root/.bashrc
#echo 'export PYTHONPATH=/env/python'>> /root/.bashrc

echo "exported"


#update password
passwd << EOF
123456789
123456789
EOF
echo "password updated"

#update ssh server
apt update
apt install openssh-server
wget https://raw.githubusercontent.com/duytue/ngrok/master/sshd_config -O /etc/ssh/sshd_config
service ssh start

echo "service started"
#download ngrok 
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
./ngrok authtoken 6vCwTgK9WPKy2fppHhwZ8_2k38MfzMywNELxecTiWw8

echo "ngrok stated"


#install libs.

apt install sudo
sudo apt install software-properties-common
sudo apt install vim tmux
sudo apt install fuse
sudo apt install psmisc
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt update
sudo apt install google-drive-ocamlfuse

echo "installed libs"
