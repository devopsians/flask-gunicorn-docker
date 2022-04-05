# docker-flask-gunicorn-nginx

Boilerplate project template for a generic dockerized Flask application deployed with gunicorn and Nginx configurations.
## Quickstart
Run in this path:
```sh
$ docker-compose up
```
This will build the docker image and the production-ready Flask app will be running on http://my-public-ip:5001 (or http://localhost:5001 for local machine). 
Static files will be served by Nginx on http://my-public-ip/static/. 


#Retrieve an authentication token and authenticate your Docker client to your registry.
#Use the AWS CLI:

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 755345766251.dkr.ecr.ap-south-1.amazonaws.com
#Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
#Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:

docker build -t flask-gunicorn-docker_flaskapp .

#After the build completes, tag your image so you can push the image to this repository:

docker tag flask-gunicorn-docker_flaskapp:latest 755345766251.dkr.ecr.ap-south-1.amazonaws.com/flask-gunicorn-docker_flaskapp:latest

#Run the following command to push this image to your newly created AWS repository:

docker push 755345766251.dkr.ecr.ap-south-1.amazonaws.com/flask-gunicorn-docker_flaskapp:latest

