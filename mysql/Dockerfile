FROM mysql:latest

LABEL maintainer="postmodern.mod3@gmail.com"

RUN chown -R mysql:root /var/lib/mysql/

ENV MYSQL_DATABASE=db
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=password1234
ENV MYSQL_ROOT_PASSWORD=password1234

ADD data.sql /etc/mysql/data.sql

RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql
RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d

EXPOSE 3306
