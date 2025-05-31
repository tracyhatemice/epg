#!/usr/bin/env sh
# shellcheck shell=sh

TZ=${TZ:-UTC}
EPG_DB_NAME=${EPG_DB_NAME:-epg}
EPG_DB_USERNAME=${EPG_DB_USERNAME:-epg}
EPG_DB_PASSWORD=${EPG_DB_PASSWORD}
EPG_DB_HOST=${EPG_DB_HOST:-localhost}
EPG_DB_PORT=${EPG_DB_PORT:=3306}
EPG_FQDN=${EPG_FQDN}

if [[ ! -v ${EPG_DB_PASSWORD} ]]; then
  echo "Error: EPG_DB_PASSWORD is not set"
  exit 1
fi

if [[ ! -v ${EPG_FQDN} ]]; then
  echo "Error: EPG_FQDN is not set"
  exit 1
fi

echo "Setting DB configuration..."
sed -i "s|"NAME": "EPG_DB_NAME"|"NAME": "${EPG_DB_NAME}"|g" /app/epg/settings.py
sed -i "s|"USER": "EPG_DB_USERNAME"|"USER": "${EPG_DB_USERNAME}"|g" /app/epg/settings.py
sed -i "s|"PASSWORD": "EPG_DB_PASSWORD"|"PASSWORD": "${EPG_DB_PASSWORD}"|g" /app/epg/settings.py
sed -i "s|"HOST": "EPG_DB_HOST"|"HOST": "${EPG_DB_HOST}"|g" /app/epg/settings.py
sed -i "s|"PORT": "EPG_DB_PORT"|"PORT": "${EPG_DB_PORT}"|g" /app/epg/settings.py
sed -i "s|ALLOWED_HOSTS = ["EPG_FQDN", "localhost"]|ALLOWED_HOSTS = ["${EPG_FQDN}", "localhost"]|g" /app/epg/settings.py
sed -i "s|CSRF_TRUSTED_ORIGINS = ["https://EPG_FQDN", "http://EPG_FQDN", "http://localhost"]|CSRF_TRUSTED_ORIGINS = ["https://${EPG_FQDN}", "http://${EPG_FQDN}", "http://localhost"]|g" /app/epg/settings.py

crond
python3 manage.py runserver 0.0.0.0:80