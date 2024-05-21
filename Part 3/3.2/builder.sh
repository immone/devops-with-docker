#!/bin/sh
git clone https://github.com/${1}.git
cd ${1##*/} 
docker build . -t bash-app
docker login 
docker tag bash-app ${2}
docker push ${2}