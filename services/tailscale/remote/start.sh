#/bin/sh
rc-update add tailscale && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
