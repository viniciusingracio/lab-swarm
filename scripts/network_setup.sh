#!/bin/bash

if [[ $EUID -eq 0 ]]; then
  echo "    * 10.10.10.0/24 192.168.1.0/24" > /etc/vbox/networks.conf
  echo "    * 2001::/64" >> /etc/vbox/networks.conf
else
  echo "Você não tem permisão para criar o arquivo. Por favor execute como sudo."
fi
