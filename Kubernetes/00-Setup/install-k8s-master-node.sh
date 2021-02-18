#!/bin/bash

echo "********************  Installing Docker ***********************"
sleep 3
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
apt-get update && apt-get install -y docker-ce

echo "******************** Installing kubernetes *********************"
apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet=1.18.0-00 kubeadm=1.18.0-00 kubectl=1.18.0-00

echo "******************* Deploying kubernetes ***********************"

# Fix Me - Update the "apiserver-advertise-address" with your master node ip.

kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address="172.31.13.160" 
export KUBECONFIG=/etc/kubernetes/admin.conf


echo "******************* Deploying kubernetes - Calico Network ***********************"
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

