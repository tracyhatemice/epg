#!/bin/bash
# 崩溃自动重启
while true
do
    if pgrep /usr/local/bin/uwsgi --ini /app/uwsgi/uwsgi.ini >/dev/null
    then
        sleep 10
    else
        echo "EPG service is not running, restarting"
        /usr/local/bin/uwsgi --ini /app/uwsgi/uwsgi.ini
        sleep 1
    fi
done