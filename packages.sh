#!/bin/bash

IMAGE_NAME="base-python"
docker image rm ${IMAGE_NAME}
docker build . -t ${IMAGE_NAME}
docker run --rm --entrypoint '/bin/sh' -v ${PWD}:/tmp ${IMAGE_NAME} -c '\
  apk info -v | sort > /tmp/package_versions.txt && \
  echo "==== Pip Packages ====" >> /tmp/package_versions.txt && \
  pip3 list --format freeze | sort >> /tmp/package_versions.txt && \
  chmod 777 /tmp/package_versions.txt'
