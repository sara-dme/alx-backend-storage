-- create a function that divides
-- the first by the second num or return 0
-- if second num is equal to 0

DELIMITER $$
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS FLOAT
BEGIN
	RETURN (IF (b = 0, 0, a / b));
END
$$
DELIMITER;
