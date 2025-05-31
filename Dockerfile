FROM python:3.12-slim
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && apt-get -y install cron \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip \
    &&pip install --no-cache-dir -r requirements.txt

COPY . /app

COPY cronjob /etc/cron.d/cronjob
RUN chmod 0644 /etc/cron.d/cronjob

EXPOSE 80
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["cron","-f", "-L", "2"]