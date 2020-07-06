FROM golang:1.14.4-alpine3.12

WORKDIR /go/src/app
COPY ./golang .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["golang"]