CREATE TRIGGER Log
ON Messages
INSTEAD OF DELETE
AS
BEGIN
--SET IDENTITY_INSERT MessageLogs ON
    INSERT  INTO MessageLogs(Id,Content,SentOn,ChatId,UserId) 
	 SELECT Id,Content,SentOn,ChatId,UserId FROM DELETED
--SET IDENTITY_INSERT MessageLogs OFF
END