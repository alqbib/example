# Version: 0.0.1
FROM ubuntu:xenial-20200706
MAINTAINER Ryan Luo "alqbib@163.com"
ENV TARGET_DIR /home/ryan
WORKDIR $TARGET_DIR
RUN apt update
RUN apt install nginx -y
RUN echo 'Hi, I am in your nested container' > /var/www/html/index.html
VOLUME ["/data"]
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
