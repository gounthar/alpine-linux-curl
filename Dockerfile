#FROM armhf/alpine 
FROM schmich/armv7hf-alpine-qemu

MAINTAINER Gounthar Frankfurt <116569+gounthar@users.noreply.github.com>

USER root

RUN apk update && apk upgrade && apk add curl\
  && rm -fr /tmp/*
