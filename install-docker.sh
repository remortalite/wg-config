dpkg --configure -a # fix packages if something wrong

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker # start docker permissions without reboot

curl -sSL https://get.docker.com | sh # download docker

sudo service docker restart # start docker without reboot
