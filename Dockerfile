#FROM armhf/alpine 
FROM project31/aarch64-alpine-qemu

MAINTAINER Gounthar Frankfurt <116569+gounthar@users.noreply.github.com>
RUN [ “cross-build-start” ]
USER root

RUN apk update && apk upgrade && apk add curl\
  && rm -fr /tmp/*
RUN [ “cross-build-end” ]
