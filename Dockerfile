FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir /vmx


WORKDIR /vmx

RUN \
  wget http://files.vision.ai/vmx/VMXserver/Linux/VMXserver_Linux.stable.tar.gz && \
  tar xfzv VMXserver_Linux.stable.tar.gz && \
  rm VMXserver_Linux.stable.tar.gz

ADD config.json /vmx/build/config.json

VOLUME /vmx/build

RUN mkdir -p /vmx/data
RUN cd /vmx/data && wget http://files.vision.ai/vmx/pretrained/3f61ce5c7642bc2f24f7286f600b3e6b
VOLUME /vmx/data
