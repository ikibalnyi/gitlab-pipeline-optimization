FROM golang:1.7.3
WORKDIR /app
COPY app.go .
RUN go build app.go

CMD ["./app"]
