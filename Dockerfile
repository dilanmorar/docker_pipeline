FROM ubuntu:18.04

RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

RUN sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

RUN sudo apt-get update

RUN sudo apt-get upgrade

RUN sudo apt install default-jre -y

RUN sudo apt-get install -y jenkins
