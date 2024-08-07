FROM mysql:latest

ADD ./init.d/ /docker-entrypoint-initdb.d/
RUN chmod -R 775 /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD Aprobit1
