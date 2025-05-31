#!/bin/sh
env >> /etc/environment

python3 manage.py runserver 0.0.0.0:80
cron -f -L 2
