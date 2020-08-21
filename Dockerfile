FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y supervisor build-essential
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /
COPY redis-cluster /redis-cluster
WORKDIR /redis-cluster
CMD ["./docker-entrypoint.sh"]