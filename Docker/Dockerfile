FROM docker.io/ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install git wget curl
RUN apt-get -y install python3 python3-pil python3-numpy
RUN apt-get -y install python3-pip
RUN python3 -m pip install --upgrade pip && python3 -m pip install jupyter
# add my account to use "docker run -u"
RUN echo "jupyter:x:8888:100:Jupyter Notebook:/home/jupyter:/bin/bash" >> /etc/passwd
RUN mkdir -p /home/jupyter && chown jupyter /home/jupyter
# additional modules 
run pip install matplotlib scipy
USER jupyter
COPY jupyter_notebook_config.py  /home/jupyter/.jupyter/
WORKDIR /home/jupyter
