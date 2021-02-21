FROM mcr.microsoft.com/mssql/server:2017-CU20-ubuntu-16.04

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD="p#2!2383&&&;"
ENV DEBIAN_FRONTEND=noninteractive

COPY ["*.bak", "./"]
COPY ["*.sql", "./"]
COPY ["entrypoint.sh", "entrypoint.sh"]
COPY ["restore_api_db.sh", "restore_api_db.sh"]

RUN chmod +x /entrypoint.sh
RUN chmod +x /restore_api_db.sh

VOLUME ["/var/opt/mssql"]

EXPOSE 1433
CMD /bin/bash ./entrypoint.sh
