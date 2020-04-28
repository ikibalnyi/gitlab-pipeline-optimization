# source https://docs.docker.com/develop/develop-images/multistage-build/
FROM golang:1.7.3 as build
WORKDIR /app
COPY app.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /app
# use --from to specify stage from which you wanna copy
COPY --from=build /app .
CMD ["./app"]
