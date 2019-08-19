#!/bin/bash
cd Docker
docker build --rm \
--build-arg http_proxy --build-arg https_proxy \
-t jupyter-wrk -f proxy.Dockerfile .
