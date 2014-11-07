FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir /vmx


WORKDIR /vmx

RUN \
  wget http://files.vision.ai/releases/vmxserver.current.tar.gz && \
  tar xfzv vmxserver.current.tar.gz && \
  rm vmxserver.current.tar.gz

ADD config.json /vmx/build/config.json

RUN mkdir -p /vmx/build/models
RUN mkdir -p /vmx/build/sessions

VOLUME /vmx/build

RUN mkdir -p /vmx/data
RUN cd /vmx/data && wget http://vm-x.com/3f61ce5c7642bc2f24f7286f600b3e6b
VOLUME /vmx/data
