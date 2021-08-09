FROM golang:1.16

WORKDIR /go/src/app
COPY .  .

RUN go get -d -v ./...
RUN go install -v ./...
RUN apt update
RUN apt install ffmpeg -y

EXPOSE 8083

ENV GO111MODULE=on
ENV GIN_MODE=release