FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /
COPY redisfiles /redisfiles
WORKDIR /redisfiles
CMD ["/usr/bin/supervisord"]