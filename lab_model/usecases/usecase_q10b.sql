WITH Sections AS (
	SELECT Assignments.CourseMnemonic, Assignments.TermID
	FROM Assignments
	GROUP BY Assignments.CourseMnemonic, Assignments.TermID
	HAVING COUNT(DISTINCT Assignments.InstructorID) > 1)

SELECT Sections.CourseMnemonic, Sections.TermID, Instructors.InstructorName
FROM Sections
INNER JOIN Assignments ON Sections.CourseMnemonic = Assignments.CourseMnemonic AND Sections.TermID = Assignments.TermID
INNER JOIN Instructors ON Assignments.InstructorID = Instructors.InstructorID
