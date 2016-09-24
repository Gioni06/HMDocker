#!/bin/bash

# Use this pre build script to install all necessary dependencies

# Install Docker container service
if [ ! -f /usr/bin/docker ]; then
    echo "Installing Docker."
    curl -s https://get.docker.io/ubuntu/ | sudo sh
fi

# NodeJS package manager
if [ ! -e /usr/bin/npm ]; then
    sudo apt-get install npm

    # If we get only Ubuntu's default NodeJS and not the one from the chris-lea PPA
    if [ -e /usr/bin/nodejs -a ! -e /usr/bin/node ]; then
        # Create `node` alias expected by bower
        ln -s /usr/bin/nodejs ~/bin/node
    fi
fi

# Get Bitnami's MongoDB Docker image
git clone https://github.com/bitnami/bitnami-docker-mongodb.git database