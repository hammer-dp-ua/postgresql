# docker build -t postgres-image .
# docker run --network=super_home_nw --restart always --detach --name postgres-container --publish 5432:5432 --mount type=volume,source=postgres_data_volume,destination=/var/lib/postgresql/data -v "z:\USER\PostgreSQL\my-postgres.conf":/etc/postgresql/postgresql.conf postgres-image -c config_file=/etc/postgresql/postgresql.conf
# docker exec -it --user postgres postgres-container bash

FROM postgres:12.1

RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=Qwerty123
