#!bin/bash
#start SQL Server, start the script to create the DB and import the data, start the app
nohup /restore_api_db.sh &
/opt/mssql/bin/sqlservr
