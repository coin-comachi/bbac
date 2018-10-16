FROM node:boron-slim

# install nc for sync-request
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
  netcat

ADD . /bbac/
RUN cd /bbac && npm install
