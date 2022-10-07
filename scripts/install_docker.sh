#!/bin/bash
curl -fsSL https://get.docker.com | sudo bash
curl -fsSL "https://github.com/docker/compose/releases/download/v2.10.1/docker-compose-linux-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
usermod -aG docker vagrant
