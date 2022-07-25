#!/bin/bash
# Instructions adapted from: https://www.paritybit.ca/blog/setting-up-a-gopher-site
# Copy files into /var/gopher

sudo apt update
# sudo apt upgrade -y
# sudo apt autoremove --purge -y
sudo apt install build-essential libwrap0-dev -y

wget -O gophernicus.tar.xz https://github.com/gophernicus/gophernicus/releases/download/3.1.1/gophernicus-3.1.1.tar.gz

tar -xf gophernicus.tar.xz 
cd gophernicus-*

./configure --listener=systemd
make
sudo make install

sudo cp /etc/default/gophernicus /etc/default/gophernicus.backup
echo 'OPTIONS="-h raspberrypi -nv -nx -nt -nq -no -nl -nu"' | sudo tee /etc/default/gophernicus

sudo systemctl enable gophernicus.socket
sudo systemctl start gophernicus.socket
