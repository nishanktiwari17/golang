FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apt-get install -y git
RUN go build -o main .
CMD ["/app/main"]