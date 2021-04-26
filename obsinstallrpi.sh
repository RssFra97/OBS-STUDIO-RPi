#!/bin/bash
echo "  ----------------------------> ----------------------------------------- <---------------------------- "
echo "  ----------------------------> (!) Copyright RSSFRA97 - Itech's Blog (!) <---------------------------- "
echo "  ----------------------------> ----------------------------------------- <---------------------------- "
echo "                                                                                                              "
echo "  ----------------------------> INSTALL PACKAGES EXTRA FOR INSTALL OBS AND USE <----------------------------  "
echo " |                                                     / \                                                  | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                      |                                                   | "
echo " |                                                     \ /                                                  | "
echo "  ----------------------------> INSTALL PACKAGES EXTRA FOR INSTALL OBS AND USE <----------------------------  "
echo "                                                                                                              "
sleep 5
sudo apt-get install build-essential 
sudo apt-get install checkinstall 
sudo apt-get install cmake 
sudo apt-get install git
sudo apt-get install libmbedtls-dev 
sudo apt-get install libasound2-dev
sudo apt-get install libavcodec-dev
sudo apt-get install libavdevice-dev
sudo apt-get install libavfilter-dev
sudo apt-get install libavformat-dev
sudo apt-get install libavutil-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libfdk-aac-dev
sudo apt-get install libfontconfig-dev
sudo apt-get install libfreetype6-dev
sudo apt-get install libglvnd-dev
sudo apt-get install libjack-jackd2-dev
sudo apt-get install libjansson-dev
sudo apt-get install libluajit-5.1-dev
sudo apt-get install libpulse-dev
sudo apt-get install libqt5x11extras5-dev
sudo apt-get install libspeexdsp-dev
sudo apt-get install libswresample-dev
sudo apt-get install libswscale-dev
sudo apt-get install libudev-dev
sudo apt-get install libv4l-dev
sudo apt-get install libvlc-dev
sudo apt-get install libwayland-dev
sudo apt-get install libx11-dev
sudo apt-get install libx264-dev
sudo apt-get install libxcb-shm0-dev
sudo apt-get install libxcb-xinerama0-dev
sudo apt-get install libxcomposite-dev
sudo apt-get install libxinerama-dev
sudo apt-get install pkg-config
sudo apt-get install python3-dev
sudo apt-get install qtbase5-dev
sudo apt-get install qtbase5-private-dev
sudo apt-get install libqt5svg5-dev
sudo apt-get install swig
sudo apt-get install libxcb-randr0-dev 
sudo apt-get install libxcb-xfixes0-dev
sudo apt-get install libx11-xcb-dev
sudo apt-get install libxcb1-dev
sudo apt-get install libxss-dev
sudo apt-get install libpipewire-0.3-dev
sudo apt-get install qtwayland5
echo "                                                                         "
echo "  ----------------------------> MAKE SWAP <----------------------------  "
echo " |                                 / \                                 | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                  |                                  | "
echo " |                                 \ /                                 | "
echo "  ----------------------------> MAKE SWAP <----------------------------  "
echo "                                                                         "
sleep 5
sudo dd if=/dev/zero of=/var/swap2 bs=8192 count=1000000
sudo chmod 600 /var/swap2
sudo mkswap /var/swap2
sudo swapon /var/swap2
sudo swapon
echo "                                                                           "
echo "  ----------------------------> INSTALL OBS <----------------------------  "
echo " |                                  / \                                  | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                   |                                   | "
echo " |                                  \ /                                  | "
echo "  ----------------------------> INSTALL OBS <----------------------------  "
echo "                                                                           "
sleep 5
sudo apt-get --allow-releaseinfo-change update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
sudo apt-get -y install build-essential checkinstall cmake git libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libcurl4-openssl-dev libfontconfig1-dev libfreetype6-dev libgl1-mesa-dev libjack-jackd2-dev libjansson-dev libluajit-5.1-dev libpulse-dev libqt5x11extras5-dev libspeexdsp-dev libswresample-dev libswscale-dev libudev-dev libv4l-dev libvlc-dev libx11-dev libx11-xcb1 libx11-xcb-dev libxcb-xinput0 libxcb-xinput-dev libxcb-randr0 libxcb-randr0-dev libxcb-xfixes0 libxcb-xfixes0-dev libx264-dev libxcb-shm0-dev libxcb-xinerama0-dev libxcomposite-dev libxinerama-dev pkg-config python3-dev qtbase5-dev libqt5svg5-dev swig
sudo wget http://ftp.uk.debian.org/debian/pool/non-free/f/fdk-aac/libfdk-aac1_0.1.4-2+b1_armhf.deb
sudo wget http://ftp.uk.debian.org/debian/pool/non-free/f/fdk-aac/libfdk-aac-dev_0.1.4-2+b1_armhf.deb
sudo dpkg -i libfdk-aac1_0.1.4-2+b1_armhf.deb
sudo dpkg -i libfdk-aac-dev_0.1.4-2+b1_armhf.deb
sudo git clone --recursive https://github.com/obsproject/obs-studio.git
cd obs-studio
sudo mkdir build && cd build
sleep 5
sudo cmake -DENABLE_PIPEWIRE=OFF -DUNIX_STRUCTURE=1 -DBUILD_BROWSER=OFF -DCMAKE_INSTALL_PREFIX=/usr ..
sleep 5
sudo make -j4
sleep 5
sudo make install
sleep 5
sudo checkinstall --default --pkgname=obs-studio --fstrans=no --backup=no --pkgversion="$(date +%Y%m%d)-git" --deldoc=yes
echo "                                                                                  "
echo "  ----------------------------> FINISH INSTALL OBS <----------------------------  "
echo " |                                       / \                                    | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                        |                                     | "
echo " |                                       \ /                                    | "
echo "  ----------------------------> FINISH INSTALL OBS <----------------------------  "
echo "                                                                                  "
exit 0