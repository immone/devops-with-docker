## install go
FROM golang:1.16 as build-stage

## set workdir
WORKDIR /usr/src/app

## copy files
COPY . .

# need cgo_enabled flag to be set to 0
RUN CGO_ENABLED=0 go build

# from https://darrencodes.blog/2023/07/01/configuring-a-non-root-user-in-a-scratch-docker-image/

RUN addgroup gouser &&  \
    adduser --ingroup gouser --uid 19998 --shell /bin/false gouser &&  \
    cat /etc/passwd | grep gouser > /etc/passwd_gouser

FROM scratch

# set port
EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/server /usr/src/app
COPY --from=build-stage /etc/passwd_gouser /etc/passwd

USER gouser

CMD ["./server"]
