FROM golang:alpine

WORKDIR /go/src
# RUN GOOS=linux GOARCH=amd64

# pre-copy/cache go.mod for pre-downloading dependencies and only 
# redownloading them in subsequent builds if they change
COPY go.mod go.sum ./

RUN go mod download 

# COPY . /go/src
# RUN cd main/core &&  go build -o /core

EXPOSE 8080

#  CMD [ "/core" ]