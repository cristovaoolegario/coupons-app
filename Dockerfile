FROM golang:1.21.3 as builder
WORKDIR /app
COPY . .
RUN CGO_ENABLE=0 GOOS=linux GOARCH=amd64 go build -o server

FROM scratch
COPY --from=builder /app/server /server
ENTRYPOINT ["/server"]
