FROM golang:1.18-bullseye

WORKDIR /App

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o app

CMD ["./app"]
