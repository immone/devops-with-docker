#!/bin/sh

echo "Cloning repo from https://github.com/$1.git.."
git clone https://github.com/$1.git

echo "Changing folder to ${1##*/}.."
cd ${1##*/} 

echo "Logging in.."
docker build . -t bash-app
docker login $DOCKER_USER $DOCKER_PWD

echo "Tagging $2.."
docker tag bash-app $2

echo "Pushing $2 to docker.."
docker push $2

echo "Done!"