#!/bin/bash
#Made for the Rasberry Pi 3, Kali Arm Install, but will work on other's, just add sudo su to the first line.
#Metasploit Installer
#Veil-ordinance Installer
#Written by: xXDUNNKILLED1Xx

echo Installing Metasploit Dependancies.....
apt-get -y install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
apt-get install git-core postgresql curl ruby1.9.3 nmap gem
gem install wirble sqlite3 bundler
cd /opt
echo Cloning Metasploit...
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework
echo Installing bundle...
bundle install
cd /root
mkdir Tools
cd Tools
echo Cloning Veil3.0
git clone https://github.com/Veil-Framework/Veil-Evasion.git
cd Veil
cd setup
echo Setting up Veil
./setup.sh
echo Finished! 
