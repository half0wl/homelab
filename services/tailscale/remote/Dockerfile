FROM caddy:2.7.6-alpine
RUN apk update && apk add tailscale openrc supervisor
RUN rc-update add tailscale
COPY Caddyfile /etc/caddy/Caddyfile
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
