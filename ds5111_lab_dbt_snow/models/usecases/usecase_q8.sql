SELECT DISTINCT Instructors.InstructorName, Assignments.TermID
FROM Assignments
INNER JOIN Instructors
	ON Assignments.InstructorID = Instructors.InstructorID
WHERE Assignments.TermID='fall2021'
ORDER BY Instructors.InstructorName ASC
