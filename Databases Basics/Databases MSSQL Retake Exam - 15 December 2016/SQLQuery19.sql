 CREATE TRIGGER deleteUsers 
 ON Users
 INSTEAD OF DELETE
 AS
 BEGIN
    DELETE FROM Messages
	WHERE UserId IN (SELECT Id FROM DELETED)

	DELETE FROM UsersChats
	WHERE UserId IN (SELECT Id FROM DELETED)

	DELETE FROM Users
	WHERE Id IN (SELECT Id FROM DELETED)

	DELETE FROM Credentials
	WHERE Id IN (SELECT CredentialId FROM DELETED)




 END