create database MED
go

use MED
go 
--SELECT * FROM medicine

IF OBJECT_ID('medicine', 'U') IS NOT NULL 
begin 
	drop table medicine
	
	 
create table medicine 
(
	Id int identity,
	[name] varchar(20),
	price money,
	IsonStock bit
)
end 





INSERT INTO [dbo].[medicine] ([name],[price],[IsonStock]) VALUES ('citramoni',1.2,1)
INSERT INTO [dbo].[medicine] ([name],[price],[IsonStock]) VALUES ('analgini',0.2,1)
INSERT INTO [dbo].[medicine] ([name],[price],[IsonStock]) VALUES ('mig_400',0.8,1)
INSERT INTO [dbo].[medicine] ([name],[price],[IsonStock]) VALUES ('noshpa',0.4,0)
INSERT INTO [dbo].[medicine] ([name],[price],[IsonStock]) VALUES ('valosedi',1.3,1)	

---AUTOCOMMIT TRANSACTION
UPDATE a
SET price=1.10
FROM medicine a
WHERE Id =5


--Explicit transactions
BEGIN TRAN
GO 

UPDATE a
SET IsonStock=0
FROM medicine a
WHERE Id =3

COMMIT TRAN
--IMPLICIT TRANSACTIONS







