#/bin/sh
echo "TS_USERSPACE=${TS_USERSPACE}";
echo "TS_ACCEPT_DNS=${TS_ACCEPT_DNS}";
echo "TS_AUTH_ONCE=${TS_AUTH_ONCE}";
echo "TAILSCALE_FWD_ADDR=${TAILSCALE_FWD_ADDR}";
echo "DOMAIN=${DOMAIN}";
sleep 3;
/usr/sbin/tailscaled --tun=userspace-networking --verbose=1 && \
    sleep 5 && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
