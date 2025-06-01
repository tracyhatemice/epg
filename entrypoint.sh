#!/bin/sh
env >> /etc/environment
cron
python3 manage.py runserver 0.0.0.0:80
