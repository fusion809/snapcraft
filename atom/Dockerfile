# VERSION:        0.1
# DESCRIPTION:    Image to build Atom and create a .snap file

# Base docker image
FROM ubuntu:16.04

# Install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y snapd snapcraft

ADD . /atom
WORKDIR /atom

RUN snapcraft

COPY /atom/atom_1.8.0_amd64.snap .
