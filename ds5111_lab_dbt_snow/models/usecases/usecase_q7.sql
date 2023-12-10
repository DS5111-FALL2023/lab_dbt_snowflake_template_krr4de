SELECT Assignments.CourseMnemonic, Assignments.InstructorID, Assignments.TermID, Instructors.InstructorName
FROM Assignments
INNER JOIN Instructors
	ON Assignments.InstructorID = Instructors.InstructorID
WHERE CourseMnemonic='ds5100' AND TermID='summer2021'
