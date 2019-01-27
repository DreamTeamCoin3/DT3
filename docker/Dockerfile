FROM debian:stretch
LABEL maintainer="DreamTeam3 Developers <dev@dreamteam3.org>"
LABEL description="Dockerised DreamTeam3Core, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
