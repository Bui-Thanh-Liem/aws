- free -h

// TẠO FILE SWAP 2GB
- sudo fallocate -l 2G /swapfile

// SET QUYỀN CHUẨN (BẮT BUỘC)
- sudo chmod 600 /swapfile

// FORMAT & BẬT SWAP
- sudo mkswap /swapfile
- sudo swapon /swapfile

- free -h


// TỰ ĐỘNG BẬT SWAP SAU REBOOT (RẤT QUAN TRỌNG)
- sudo nano /etc/fstab

- them vao cuoi /swapfile none swap sw 0 0

// KIỂM TRA SWAP
- swapon --show
- free -h

// DOWNLOAD DOCKER 
- sudo apt update & sudo apt upgrade -y
- curl -fsSL https://get.docker.com | sudo sh
- docker --version

// CHẠY DOCKER KHÔNG CẦN sudo (NÊN LÀM)
- sudo usermod -aG docker $USER
- newgrp docker
- docker ps

// CÀI DOCKER COMPOSE (PLUGIN CHÍNH THỨC)
- sudo apt install docker-compose-plugin -y
- docker compose version

// ĐĂNG NHẬP DOCKER HUB
- docker login

// Giới hạn log Docker (tránh full disk)
- sudo nano /etc/docker/daemon.json
{
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "3"
  }
}
- sudo systemctl restart docker


