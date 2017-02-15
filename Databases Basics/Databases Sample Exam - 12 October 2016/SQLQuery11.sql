SELECT TOP 3 
       e.FirstName,
	   c.CityName
  FROM Employees AS e
  JOIN Branches AS b
    ON b.BranchID=e.BranchID
  JOIN Cities AS c
    ON b.CityID=c.CityID 

	UNION ALL

SELECT TOP 3
       c.FirstName,
	   cc.CityName
  FROM Customers AS c
  JOIN Cities AS cc
    ON c.CityID=cc.CityID   
	 