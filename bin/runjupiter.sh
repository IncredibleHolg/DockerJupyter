#!/bin/bash
docker run -p 8888:8888  --rm -d -v jupitervolume:/home/jupyter --name jupyter_server jupyter-wrk  jupyter notebook
# wait for the server to start
waittime=10
echo "Wait $waittime seconds for the server to start"
sleep $waittime
# get the token
docker logs jupyter_server
