#!/bin/bash

echo " Server update please wait ..."
sudo yum update -y
echo "Installing packages these might take few min please wait ..."
sudo yum install wget -y
sudo yum install tar -y
sudo yum install git -y
sudo yum install samba -y
sudo groupadd ansible
sudo useradd -g ansible ansdeploy
sudo mkdir /opt/deploy
sudo wget -P /opt/deploy  http://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.tar.xz
sudo tar -xvf /opt/deploy/*.xz
sudo rm -rf /opt/deploy/*.xz


<< ELI
since we do not want the backend details to github public, 
we made a copy of the backend called "backend-copy.tf" with all the info and added to out gitignore.
then we remove all the details from the actual backend.tf and on github it shows nothing. when we need
it we can actually go to the gitignore and get the details we need.
ELI
