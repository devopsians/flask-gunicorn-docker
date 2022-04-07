# install kubectl on ubuntu 20.04

sudo snap install kubectl --classic

# install eksctl on ubuntu 20.04

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

eksctl version

#####

eksctl create cluster --version=1.18 --region=ap-south-1 --nodes=2 --name=flask-api-cluster 

