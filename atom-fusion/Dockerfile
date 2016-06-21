# VERSION:        0.1
# DESCRIPTION:    Image to build Atom and create a .snap file

# Base docker image
FROM ubuntu:16.04

# Install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y snapd snapcraft

ADD . /atom-fusion
WORKDIR /atom-fusion

RUN snapcraft

COPY /atom-fusion/atom_fusion_1.8.0_amd64.snap .
