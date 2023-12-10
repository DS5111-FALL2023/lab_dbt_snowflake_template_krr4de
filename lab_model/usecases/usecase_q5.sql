SELECT Courses.CourseMnemonic, Courses.CourseName
FROM Courses
LEFT JOIN LearningOutcomes 
	ON Courses.CourseMnemonic = LearningOutcomes.CourseMnemonic
WHERE LearningOutcomes.CourseMnemonic is NULL	
