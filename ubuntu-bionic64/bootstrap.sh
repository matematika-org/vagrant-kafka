#!/usr/bin/env bash

# Kubelet не будет работать, если включен swap
# Отключаю Своп
swapoff -a && sed -i '/ swap / s/^/#/' /etc/fstab

apt-get update && apt-get upgrade -y && apt-get install -y default-jdk


# Прописываю хосты
#echo "192.168.0.11 kafka1" >> /etc/hosts
echo "192.168.0.11 zookeeper1" >> /etc/hosts
#echo "192.168.0.12 kafka2" >> /etc/hosts
echo "192.168.0.12 zookeeper2" >> /etc/hosts
#echo "192.168.0.13 kafka3" >> /etc/hosts
echo "192.168.0.13 zookeeper3" >> /etc/hosts
