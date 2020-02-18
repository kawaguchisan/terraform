FROM golang:alpine

ENV TERRAFORM_VERSION=0.12.20
ENV TF_DEV=true
ENV TF_RELEASE=true

WORKDIR $GOPATH/src/github.com/hashicorp/terraform

RUN apk add --update git bash openssh make gcc g++
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh
