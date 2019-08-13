FROM docker.io/ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install git wget curl
RUN apt-get -y install python3 python3-pil python3-numpy
RUN apt-get -y install python3-pip
RUN python3 -m pip install --upgrade pip && python3 -m pip install jupyter
# add my account to use "docker run -u"
RUN echo "hdunkel:x:501:100:Holger Dunkel:/home/hdunkel:/bin/bash" >> /etc/passwd
RUN mkdir -p /home/hdunkel && chown hdunkel /home/hdunkel
