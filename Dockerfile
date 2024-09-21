FROM docker:23.0.6-dind-alpine3.18

# Creating directory for Docker certs
RUN mkdir -p /certs

# Updating & Adding neccessery packages
RUN apk update && apk add \
    zip \
    curl \
    bash \
    build-base \
    groff

# Install Golang
RUN apk add go && go version

# Install node.js and npm (Node Package Manager)
RUN apk add \
    nodejs \
    npm

# Updating npm (Node Package Manager)
RUN npm install -g npm@latest

# Installing AWS CDK CLI
RUN npm install -g aws-cdk@latest \
    && cdk --version

# Install AWS CLI
RUN apk add aws-cli \
    && aws --version

# Creating a Volume & Directory for CDK Project
RUN mkdir -p /usr/local/cdk
VOLUME /usr/local/cdk
WORKDIR /usr/local/cdk
