FROM python:3.12-slim
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && apt-get -y install cron tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /etc/cron.*/*

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . /app
COPY ./cronjob /etc/cron.d/epg
RUN chmod 0644 /etc/cron.d/epg

ARG TZ
<<<<<<< HEAD
RUN echo $TZ > /etc/timezone
=======
RUN echo ${TZ} > /etc/timezone
>>>>>>> 4d8b44b (fix typo)

EXPOSE 80
ENTRYPOINT ["/app/entrypoint.sh"]
