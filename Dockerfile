FROM golang:1.18-alpine

RUN apk update && apk add --no-cache g++

ADD . /usr/app
WORKDIR /usr/app
# Build
RUN go build . mergemock

ENTRYPOINT ["/usr/app/mergemock"]
