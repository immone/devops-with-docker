## install Node.js
FROM alpine:latest

RUN apk add --no-cache go

## workdir
WORKDIR /usr/src/app

## from README.md
EXPOSE 8080

## copy files
COPY . .

## build
RUN go build

# create the appuser
RUN addgroup -S usergroup
RUN adduser -S appuser -G usergroup

## Environment variable for port and pass url

CMD PORT=8000 REQUEST_ORIGIN=http://localhost:3000 ./server
