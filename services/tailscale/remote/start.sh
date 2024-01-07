#/bin/sh
/usr/bin/tailscaled --tun=userspace-networking && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
