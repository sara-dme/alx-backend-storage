-- create a stored procedure addBonus
-- that adds a new correction for a student

DELIMITER $$
DROP PROCEDURE IF EXISTS AddBonus;
CREATE PROCEDURE AddBonus(
	IN `user_id` INTEGER,
	IN `project_name` VARCHAR(255),
	IN `score` INTEGER
)
BEGIN
	INSERT INTO projects (name)
	SELECT project_name
	WHERE project_name NOT IN(SELECT name FROM projects);

	INSERT INTO corrections (user_id, project_id, score)
	Values(user_id, (SELECT id from projects Where name=project_name), score);
END $$
DELIMITER ;$$
