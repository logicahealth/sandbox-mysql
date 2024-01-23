FROM mysql:8.3
LABEL maintainer='Preston Lee'

COPY ./schema-scripts/ /docker-entrypoint-initdb.d/
COPY ./healthcheck/wait-for-db.sh /wait-for-db.sh
RUN chmod +x /wait-for-db.sh
