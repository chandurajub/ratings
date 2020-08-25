FROM   httpd
RUN    rm -rf /var/www/html
COPY   html   /var/www
COPY   status.conf  /etc/httpd/conf.d/
EXPOSE 80