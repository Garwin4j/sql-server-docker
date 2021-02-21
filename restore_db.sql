USE [master]
--Check if the Database exist, if it doesn't restore it
IF db_id(N'MyDB') IS NULL
        BEGIN
    RESTORE DATABASE [MyDB] FROM  DISK = N'/var/opt/mssql/data/MyDB.bak' WITH  FILE = 1,  MOVE N'MyDB' TO N'/var/opt/mssql/data/MyDB.mdf',  MOVE N'MyDB_log' TO N'/var/opt/mssql/data/MyDB_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
END;
