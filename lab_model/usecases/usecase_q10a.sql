SELECT Assignments.CourseMnemonic, Assignments.TermID
FROM Assignments
GROUP BY Assignments.CourseMnemonic, Assignments.TermID
HAVING COUNT(DISTINCT Assignments.InstructorID) > 1
