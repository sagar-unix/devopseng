FROM devopsedu/webapp:latest

LABEL MAINTAINER="SAGAR BHOOSHAN" type="Edureka Devops Certification Project" version="1.0"

ENV TZ=Asia/Kolkata
SHELL ["/bin/bash", "-c"]
ADD --chown=www-data:www-data website/website /var/www/html
RUN apt-get update && \
    apt-get install -y php

EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
