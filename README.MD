This is a SQL Server docker build that was created to enable me to restore backups as a part of the running of the server. it does this by starting the server, waiting 100 seconds, then running a script to specify which bakup files to restore. Specifically, it does a few things:



1. Copies backup (*.bak) files to the image

2. Copies SQL files to the container

3. copies a entrypoint and restore script.

4. Run the entrypoint script.
   
   1. The entrypoint script runs the restore script (in a "background" thread) and then run the sql server
   
   2. The restore script waits 100 second and then runs the restore script.
      
      
      
      
      
      Hope this helps. Where I really want to move this to is to automatical restore *.bak files base on the backup file name, so pull request are welcome.  
