#Use the official MySQL Image as base
FROM mysql:latest


#ENV MySQL_USER=external_user
ENV MySQL_PASSWORD=root
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
#ENV MySQL_DATABASE=my_database


COPY ./database_students.sql /docker-entrypoint-initdb.d/
