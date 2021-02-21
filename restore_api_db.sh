#!bin/bash
echo "Restore script started... waiting 100s for server to start" 
sleep 100 
echo "Copying backup files to /var/opt/mssql/data/"
cp /*.bak /var/opt/mssql/data/ -v 
echo "Runing restore script..."
/opt/mssql-tools/bin/sqlcmd -S db -U sa -P Login_123. -i /restore_db.sql
  