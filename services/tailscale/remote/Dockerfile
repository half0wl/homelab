FROM nginx:1.25.3-alpine
RUN apk update && apk add tailscale supervisor
COPY nginx.conf /etc/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
