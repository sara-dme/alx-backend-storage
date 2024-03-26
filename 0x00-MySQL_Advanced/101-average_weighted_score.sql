-- create a stored procedure that computes and
-- store the average weighted score for all students.

DELIMITER $$
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
	UPDATE users set average_score = (SELECT SUM(corrections.score * projects.weight) / SUM(projrcts.weight)
		INNER JOIN projects
		ON projects.id = corrections.project_id
		WHERE corrections.user_id = users.id);
END $$
DELIMITER ;
