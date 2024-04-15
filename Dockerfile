# edge because:
# - `riscv64` only available in there
FROM alpine:edge

ENTRYPOINT ["/usr/bin/whois"]

WORKDIR /workspace

RUN apk add --no-cache whois

# run as unprivileged user
USER 1000:1000
