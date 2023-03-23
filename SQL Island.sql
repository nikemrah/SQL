
SELECT *
    FROM inhabitant;

SELECT *   
    FROM inhabitant
    WHERE state = "friendly";

SELECT *   
    FROM inhabitant
    WHERE job = 'weaponsmith'
    AND state = 'friendly';

SELECT *   
    FROM inhabitant
    WHERE job LIKE '%smith'
    AND state = 'friendly';

SELECT personid
    FROM inhabitant
    WHERE personid = 20;

SELECT gold
    FROM inhabitant
    WHERE personid = 20;

SELECT *
    FROM item
    WHERE owner IS NULL;

UPDATE item 
	SET owner = 20 
	WHERE owner IS NULL;

SELECT * 
	FROM ITEM 
	WHERE owner = 20;

SELECT * 
	FROM INHABITANT 
	WHERE state = 'friendly' 
	AND job = 'dealer' 
	OR job = 'merchant';

UPDATE item 
	SET owner = 15 
	WHERE item = 'ring' 
	OR item = 'teapot';

UPDATE inhabitant
	SET name = 'Emma Rawson'
	Where personid = 20;

SELECT *
	FROM inhabitant
	WHERE job = 'baker'
	ORDER BY gold DESC;

SELECT *
	FROM inhabitant
	WHERE job = 'pilot';

SELECT inhabitant.name
	FROM village, inhabitant
	WHERE village.chief = inhabitant.personid
	AND village.name = 'Onionville';

SELECT COUNT(*) 
	FROM inhabitant, village
	WHERE village.villageid = inhabitant.villageid 
	AND village.name = 'Onionville' 
	AND gender = 'f'

SELECT name
	FROM inhabitant
	WHERE villageid = 3
	AND gender = 'f';

SELECT SUM(inhabitant.gold)
	FROM inhabitant
	WHERE job = 'baker'
	OR job = 'dealer'
	OR job = 'merchant';

SELECT state, AVG(inhabitant.gold)
	FROM inhabitant
	GROUP BY state
	ORDER BY AVG(inhabitant.gold);

DELETE FROM inhabitant
WHERE name = 'Dirty Diane';

UPDATE inhabitant
	SET state = 'friendly'
	WHERE state = 'kidnapped';
