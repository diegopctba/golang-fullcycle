FROM golang:1.23.2

WORKDIR /usr/src/golang

COPY . .

RUN go mod download && go mod verify

RUN go build -v -o /usr/local/bin/golang ./...

CMD ["golang"]
