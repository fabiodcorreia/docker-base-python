FROM fabiodcorreia/base-alpine:1.0.1

ARG BUILD_DATE
ARG VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="fabiodcorreia"

RUN \
  echo "**** install runtime packages ****" && \
    apk add --no-cache \
      py3-pip \
      python3 && \
  echo "**** install pip packages ****" && \
    pip install --no-cache-dir -U pip && \
    pip install -U wheel && \
  echo "**** clean up ****" && \
    rm -rf \
	    /root/.cache \
	    /tmp/* &&\
  echo "**** make links ****" &&\
    ln -sf /usr/bin/python3 /usr/bin/python && \
    ln -sf /usr/bin/pip3 /usr/bin/pip
