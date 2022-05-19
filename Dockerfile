FROM python:3.8

#Set the working directory
WORKDIR /

#copy all the files
COPY . .


RUN apt-get -y update
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt


EXPOSE 5000


CMD gunicorn app:app
