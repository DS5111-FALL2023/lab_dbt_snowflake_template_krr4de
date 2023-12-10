SELECT LearningOutcomes.OutcomeDesc, LearningOutcomes.CourseMnemonic, Courses.CourseName
FROM LearningOutcomes
JOIN Courses
	ON LearningOutcomes.CourseMnemonic = Courses.CourseMnemonic
WHERE LearningOutcomes.OutcomeDesc LIKE '%SQL%'
