#/bin/sh
rc-update add tailscale && \
    rc-service tailscale start && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
