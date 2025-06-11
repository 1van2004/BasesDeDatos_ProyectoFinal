BACKUP DATABASE mini_testlink
TO DISK = 'C:\Backups\mini_testlink.bak'
WITH FORMAT,
     NAME = 'Backup completo de mini_testlink';

     ----------------Para restaurar---------------------
     RESTORE DATABASE mini_testlink
FROM DISK = 'C:\Backups\mini_testlink.bak';