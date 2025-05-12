FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/duckdns

FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
