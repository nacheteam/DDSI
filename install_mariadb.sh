#!/bin/bash

sudo apt install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://tedeco.fi.upm.es/mirror/mariadb/repo/10.2/ubuntu xenial main'

sudo apt update
sudo apt install mariadb-server
