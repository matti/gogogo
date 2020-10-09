FROM golang:1.15.0-alpine3.12

RUN apk add --no-cache \
  bash

COPY --from=mattipaksula/reflex:sha-0238059 /* /usr/bin/

WORKDIR /app
COPY go.* ./
RUN go mod download

COPY . ./
ENTRYPOINT [ "/usr/bin/reflex", "-s", "-v", "reflex-wrapper", "go", "run"]
