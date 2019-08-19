FROM docker.io/ubuntu:18.04
ARG http_proxy
ARG https_proxy

ENV http_proxy=${http_proxy}
ENV https_proxy=${https_proxy}
RUN apt-get -y update
RUN apt-get -y install git wget curl
RUN apt-get -y install python3 python3-pil python3-numpy
RUN apt-get -y install python3-pip  python3-avro
RUN python3 -m pip install --upgrade pip && python3 -m pip install jupyter
# add my account to use "docker run -u"
RUN echo "jupyter:x:8888:100:Jupyter Notebook:/home/jupyter:/bin/bash" >> /etc/passwd
RUN mkdir -p /home/jupyter && chown jupyter /home/jupyter
USER jupyter
COPY jupyter_notebook_config.py  /home/jupyter/.jupyter/
WORKDIR /home/jupyter
