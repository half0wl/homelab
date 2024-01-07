FROM caddy:2.7.6-alpine
RUN apk update && apk add tailscale openrc supervisor
COPY Caddyfile /etc/caddy/Caddyfile
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
