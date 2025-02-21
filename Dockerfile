FROM postgres:15

# Set default environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=defaultpassword
ENV POSTGRES_DB=railway_db

COPY ./init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432 