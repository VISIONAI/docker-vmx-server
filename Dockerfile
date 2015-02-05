FROM busybox

RUN mkdir /vmx
WORKDIR /vmx

RUN \
  wget http://files.vision.ai/vmx/VMXserver/Linux/VMXserver_Linux.latest.tar.gz && \
  gzip -d VMXserver_Linux.latest.tar.gz && \
  tar xf VMXserver_Linux.latest.tar && \
  rm VMXserver_Linux.latest.tar && \
  echo "Version is " `cat build/version` && \
  mkdir -p /vmx/data && \
  cd /vmx/data && \
  wget http://files.vision.ai/vmx/pretrained/3f61ce5c7642bc2f24f7286f600b3e6b

ADD config.json /vmx/build/config.json

VOLUME /vmx/build
VOLUME /vmx/data
