SELECT COURSEMNEMONIC, COUNT(OUTCOMEID) AS NumLearningOutcomes
FROM LearningOutcomes
GROUP BY COURSEMNEMONIC 
