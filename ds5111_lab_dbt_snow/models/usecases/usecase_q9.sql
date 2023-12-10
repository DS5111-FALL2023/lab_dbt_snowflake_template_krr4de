SELECT Assignments.TermID, Instructors.InstructorName, COUNT(Assignments.CourseMnemonic) AS NumCoursesTaught
FROM Assignments
INNER JOIN Instructors
	ON Assignments.InstructorID = Instructors.InstructorID
GROUP BY Assignments.InstructorID, Assignments.TermID, Instructors.InstructorName
ORDER BY Assignments.TermID, Instructors.InstructorName
