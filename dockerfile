FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /final_main1

CMD ["/final_main1"]
