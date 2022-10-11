FROM golang:alpine AS builder

RUN mkdir /app
WORKDIR /app

COPY go.mod . 
COPY go.sum .
RUN go mod download

ADD . /app
RUN go build -o redisapp

FROM alpine:3.12 AS production 
ENV REDIS_ADDR=redis:6379
COPY --from=builder /app/redisapp .

ENTRYPOINT [ "./redisapp" ]