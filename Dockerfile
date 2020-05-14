# FROM ubuntu:18.04

# RUN apt-get update

# RUN apt-get install sudo -y

# RUN apt-get install wget -y

# RUN apt-get install -y gnupg2

# RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# RUN apt-get update

# RUN apt-get upgrade

# RUN apt install default-jre -y

# RUN apt-get install -y jenkins

# using ubuntu 20.04 base image
FROM ubuntu:20.04

# going to the api folder
WORKDIR /home/Hackerank_basic_api

# copying everything into working directory
COPY . .

# updating the sources and installing python and pip
RUN apt-get update && \
apt-get install -y python3 && \
apt-get install -y python3-pip

# installing dependencies
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3.8"]

CMD ["app.py"]
