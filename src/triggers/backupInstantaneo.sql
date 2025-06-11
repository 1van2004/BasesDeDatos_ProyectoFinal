CREATE TRIGGER BackupOnChange
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
    EXEC('BACKUP DATABASE mini_testlink
          TO DISK = ''C:\Backups\mini_testlink.bak''
          WITH FORMAT,
               NAME = ''Backup completo de mini_testlink'';')
END;

