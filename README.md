# pullstart-docker

## Intro

Pullstart is a minimalistic Docker image to pull Node.js sources from git and run them.

## Image

Based on: debian:wheezy

Virtual size: 203.6 MB

Apt packages: git-core

Other software : Node.js

## Usage

To run a Node.js git repository use :

`docker run -it -p 80:5000 rtezli/pullstart:0.0.1 run https://github.com/heroku/node-js-sample.git`

You can also open a bash :

`docker run -it rtezli/pullstart:0.0.1 /bin/bash`
