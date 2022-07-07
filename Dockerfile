FROM ubuntu:18.04
MAINTAINER Aaron Madlon-Kay <aaron@madlon-kay.com>

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    osslsigncode \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y python3-pip jq && pip3 install awscli==1.18.140 && pip3 install aws-sam-cli==1.12

WORKDIR /work

