#!/bin/bash

if ! command -v docker &> /dev/null; then
    echo "Встановлення Docker..."
    sudo apt update
    sudo apt install -y \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    sudo usermod -aG docker "$USER"
    echo "✅ Docker встановлено"
else
    echo "✅ Docker вже встановлений"
fi



if ! docker compose version &> /dev/null; then
    echo "Встановлення Docker Compose..."
    sudo apt install -y docker-compose
    echo "✅ Docker Compose встановлено"
else
    echo "✅ Docker Compose вже встановлено"
fi



PYTHON_VERSION=$(python3 -V 2>&1 | awk '{print $2}')
REQUIRED_VERSION="3.9"

if python3 -c "import sys; exit(sys.version_info >= (3,9))"; then
    echo "✅ Python версії $PYTHON_VERSION вже встановлено"
else
    echo "Встановлення Python 3.9..."
    sudo apt update
    sudo apt install -y python3.9 python3.9-venv python3.9-distutils
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
    echo "✅ Python 3.9 встановлено"
fi



if ! command -v pip3 &> /dev/null; then
    echo "Встановлення pip..."
    curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3
    echo "✅ pip встановлено"
else
    echo "✅ pip вже встановлено"
fi


if ! python3 -m django --version &> /dev/null; then
    echo "Встановлення Django..."
    pip3 install Django
    echo "✅ Django встановлено"
else
    DJANGO_VERSION=$(python3 -m django --version)
    echo "✅ Django версії $DJANGO_VERSION вже встановлено"
fi

echo "Встановлення завершено!"