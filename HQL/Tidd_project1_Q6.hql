
-- Create a table and query to locate the top 5 wiki articles
-- that are closer to having 50% of their readers clicking on links
-- than other articles


CREATE TABLE IF NOT EXISTS HALF_LINKS AS
SELECT WIKI_TITLE, PERCENTAGE, ABS(50-PERCENTAGE) AS CLOSENESS_TO_HALF
FROM VIEW_LINK_FRACTION;

-- Query for final results
SELECT * FROM HALF_LINKS
WHERE CLOSENESS_TO_HALF != 0.0
ORDER BY CLOSENESS_TO_HALF ASC
LIMIT 10;
