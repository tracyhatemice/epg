FROM python:3.12-alpine
WORKDIR /app
COPY requirements.txt /app/
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt
COPY --chmod=755 alpine_cron_daily.sh /etc/periodic/daily/
COPY . /app
EXPOSE 80
ENTRYPOINT ["/app/entrypoint.sh"]