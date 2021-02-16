FROM ubuntu:16.04 

MAINTAINER Amit Vashist <amitvashist7@gmail.com>

RUN apt-get update 

RUN apt-get install apache2 -y 

COPY index.html /var/www/html/info.html

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
