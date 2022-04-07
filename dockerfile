FROM python:alpine3.9
RUN apk update
RUN apk add python3 python3-dev py3-pip nginx
COPY . /app
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
CMD ["gunicorn", "-w", "3", "--bind",  ":5000", "wsgi:app"]

# sudo docker build -t docker-flask-gunicorn-nginx . 
# sudo docker run -it -p 5000:5000 docker-flask-gunicorn-nginx