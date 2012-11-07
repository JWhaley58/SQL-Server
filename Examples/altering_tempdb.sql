


-- Relocate tempdb to a new location 

ALTER DATABASE tempdb
	MODIFY FILE
	(
		name = tempdev,
		filename = 'C:\databases\tempdb.mdf',
		size = 512 MB
	)
	
GO
	
ALTER DATABASE tempdb
	MODIFY FILE
	(
		name = templog,
		filename = 'C:\databases\tempdblog.ldf',
		size = 512 MB
	)	
	
GO

ALTER DATABASE tempdb
	ADD FILE
	(
		name = tempdb_secondary,
		filename = 'C:\databases\tempdb_secondary.ndf',
		size = 512 MB
	)
	
GO