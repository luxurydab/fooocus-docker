Docker environment for [Fooocus](https://github.com/lllyasviel/Fooocus)

Setup has been tested on Ubuntu 22.04 LTS with Nvidia video card

## Install Git (skip this step if you already have Git)

Follow the instructions for your operating system https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Install Docker (skip this step if you already have Docker)

### Instructions for Linux
[Install Docker](https://docs.docker.com/engine/install/)

[How to install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

Create the docker group
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```
Reboot system to apply changes

## Activate support for NVIDIA GPUs in docker environment

```bash
sudo apt-get install nvidia-container-runtime
sudo systemctl restart docker
```

verify that you have nvidia accessible inside docker environment
```bash
docker run -it --rm --gpus all ubuntu nvidia-smi
```

## Clone Fooocus Git repository

```bash
git clone https://github.com/lllyasviel/Fooocus.git
```

## Run Fooocus

Start Fooocus by running next command
```bash
docker compose up
```

Open url http://localhost:7865