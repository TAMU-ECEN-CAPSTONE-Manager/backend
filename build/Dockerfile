FROM postgres:13.1
COPY ./db/01-init.sh /docker-entrypoint-initdb.d/01-init.sh

EXPOSE 5432
CMD ["chmod","+x","docker-entrypoint.sh"]
CMD ["chmod","+x","/docker-entrypoint-initdb.d/01-init.sh"]
CMD ["docker-entrypoint.sh", "postgres"]