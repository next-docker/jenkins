FROM jenkins:latest 

MAINTAINER Ravi Sharma

#install Docker

USER root 

RUN cat /etc/issue

RUN cat /etc/debian_version

#RUN apt-get purge lxc-docker*

#RUN apt-get purge docker.io*

RUN apt-get update

RUN apt-get install -y apt-transport-https ca-certificates

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

RUN cat /etc/*-release

RUN echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list

RUN apt-get update

RUN apt-cache policy docker-engine

RUN apt-get update

RUN apt-get install -y docker-engine
#No need to start Docker as we will link the host docker to this container Docker
