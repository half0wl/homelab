#/bin/sh
echo "PORT=${PORT}";
echo "TS_FWD_ADDR=${TS_FWD_ADDR}";
echo "TS_HOSTNAME=${TS_HOSTNAME}";
sleep 3;
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
