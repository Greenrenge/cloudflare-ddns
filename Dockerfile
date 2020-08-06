FROM python:3

RUN apt-get update && apt-get -y install cron && apt-get -y install python3-venv
COPY ddns-cron /etc/cron.d/ddns-cron
COPY sync /sync
COPY config.json /config.json
COPY cloudflare-ddns.py  /cloudflare-ddns.py
RUN chmod 0744 /cloudflare-ddns.py
RUN chmod 0744 /sync
RUN chmod 0744 /config.json
RUN chmod 0744 /etc/cron.d/ddns-cron

# apply crontab
RUN crontab /etc/cron.d/ddns-cron

# create log file
RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log
