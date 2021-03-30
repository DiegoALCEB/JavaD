FROM postgres:11

ENV POSTGRES_PASSWORD 'root'

COPY ["postgreSQL.sql","/docker-entrypoint-initdb.d/"]

EXPOSE 2345
#docker build -t postgresito .
#docker run --name postgresdocker -p 2345:5432 -d postgresito
#docker exec -it postgresdocker psql -U postgres