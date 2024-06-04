## install Node.js
FROM golang:1.16

## from README.md
EXPOSE 8080

## workdir
WORKDIR /usr/src/app

## copy files
COPY . .

## build
RUN go build

## Environment variable for port and pass url

CMD PORT=8080 REQUEST_ORIGIN=http://localhost:3000 ./server
