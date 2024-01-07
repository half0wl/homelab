#/bin/sh
export TS_USERSPACE=${TS_USERSPACE}
export TS_AUTH_ONCE=${TS_AUTH_ONCE}
export TS_AUTHKEY=${TS_AUTHKEY}
export TS_ACCEPT_DNS=${TS_ACCEPT_DNS}
rc-update add tailscale && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
