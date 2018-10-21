FROM golang:1.7.3 as builder
WORKDIR /go/src/github.com/spankie/odohidavid/
COPY . /go/src/github.com/spankie/odohidavid/
RUN go get ./...
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app/app main.go
COPY --from=builder /go/src/github.com/spankie/odohidavid/public/ /go/src/github.com/spankie/odohidavid/app/public/

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/spankie/odohidavid/app .
CMD ["./app/app"]