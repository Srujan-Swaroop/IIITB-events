FROM mysql:5.7


ENV  MYSQL_DATABASE sampled
ENV  MYSQL_USER root
ENV  MYSQL_ROOT_PASSWORD 123

ADD ./events.sql /docker-entrypoint-initdb.d
