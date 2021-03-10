yum update -y
yum install nano git yum-utils htop -y
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine -y
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
yum install docker-ce docker-ce-cli containerd.io -y
systemctl start docker
systemctl status docker
systemctl enable docker
groupadd docker
usermod -aG docker ${USER}
chmod 666 /var/run/docker.sock
systemctl restart docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
