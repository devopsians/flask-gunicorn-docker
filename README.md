# docker-flask-gunicorn-nginx

Boilerplate project template for a generic dockerized Flask application deployed with gunicorn and Nginx configurations.
## Quickstart
Run in this path:
```sh
$ docker-compose up
```
This will build the docker image and the production-ready Flask app will be running on http://my-public-ip:5001 (or http://localhost:5001 for local machine). 
Static files will be served by Nginx on http://my-public-ip/static/. 


Retrieve an authentication token and authenticate your Docker client to your registry.
Use the AWS CLI:

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 755345766251.dkr.ecr.ap-south-1.amazonaws.com
Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:

docker build -t flaskapi-gunicorn .
After the build completes, tag your image so you can push the image to this repository:

docker tag flaskapi-gunicorn:latest 755345766251.dkr.ecr.ap-south-1.amazonaws.com/flaskapi-gunicorn:latest
Run the following command to push this image to your newly created AWS repository:

docker push 755345766251.dkr.ecr.ap-south-1.amazonaws.com/flaskapi-gunicorn:latest


###### EKS cluster #######

eksctl create cluster --name flaskapi --region ap-south-1 --nodegroup-name my-nodes --node-type t2.micro --managed --nodes 2 

eksctl get cluster --name flaskapi --region ap-south-1

kubectl get nodes

kubectl get ns

kubectl create deployment flaskapi --image=755345766251.dkr.ecr.ap-south-1.amazonaws.com/flaskapi-gunicorn:latest

kubectl get deployments

#eksctl delete cluster --name flaskapi --region ap-south-1

https://www.coachdevops.com/2020/12/deploy-python-app-docker-container-into.html










