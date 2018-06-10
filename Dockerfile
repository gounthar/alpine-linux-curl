FROM armhf/alpine
RUN [ “cross-build-start” ]
MAINTAINER Gounthar Frankfurt <116569+gounthar@users.noreply.github.com>

USER root

RUN apk update && apk upgrade && apk add curl\
  && rm -fr /tmp/*
RUN [ “cross-build-end” ]
