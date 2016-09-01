FROM ubuntu:14.04
MAINTAINER Andres PL <suoandres91@gmail.com>

RUN apt-get update && apt-get install -y wget
RUN mkdir /opt/mothur 
COPY /mothur /opt/mothur
ENV PATH $PATH:/opt/mothur
COPY /data /opt/datasets
