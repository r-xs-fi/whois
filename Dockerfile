FROM alpine:latest

ENTRYPOINT ["/usr/bin/whois"]

WORKDIR /workspace

RUN apk add --no-cache whois

# run as unprivileged user
USER 1000:1000
