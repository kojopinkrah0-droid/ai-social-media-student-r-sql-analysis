SELECT Activity_Band, COUNT(*) students, ROUND(AVG(Mental_Health_Score),2) avg_mental, ROUND(AVG(Physical_Health_Score),2) avg_physical FROM students GROUP BY Activity_Band;
