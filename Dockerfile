FROM ubuntu:16.04

MAINTAINER Jonas Duri <jonas.duri@gmail.com>

# Add package containing "apt-add-repository" command
RUN apt-get update
RUN apt-get install -y software-properties-common

# Add up-to-date NodeJS PPA repository
RUN apt-add-repository -y ppa:chris-lea/node.js

RUN apt-get install -y curl make git nodejs npm libapparmor-dev
RUN ln -s /usr/bin/nodejs /usr/bin/node

########

# Overwrite NPM with newer version

RUN npm install -g npm

EXPOSE 9000