CREATE TABLE BIT_DB.CityBikeLanes (
id integer primary key,
year_installed year not null,
year_updated year not null,
street varchar not null,
width_feet integer not null,
safetyrating integer not null,
protected varchar not null)

INSERT INTO BIT_DB.CityBikeLanes values(1,2012, 2020, "Chestnut",4,4,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(2,2016, 2020,"Walnut",4,3.8,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(3,2011, 2020, "Market", 3.5, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(4,2008, 2020,"Locust",4,5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(5,2002, 2020,"South",4.5,4.3,"no");
INSERT INTO BIT_DB.CityBikeLanes values(6,2012, 2021, "18th",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(7,2016, 2021,"2nd",4,3.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(8,2011, 2021, "Lombard", 3.5, 2.2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(9,2008, 2021,"Pine",4,4.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(10,2002, 2021,"Tasker",4.5,4.8,"no");
INSERT INTO BIT_DB.CityBikeLanes values(11,2012, 2020, "Earp",4,4.1,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(12,2016, 2020,"Titan",4,3.8,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(13,2011, 2020, "Manning", 3.4, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(14,2008, 2020,"Fieldcrest",4,4.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(15,2002, 2020,"York",4.5,4.5,"no");
INSERT INTO BIT_DB.CityBikeLanes values(16,2012, 2021, "Race",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(17,2016, 2021,"Museum",4,3.8,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(18,2011, 2021, "Altin", 3.5, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(19,2008, 2021,"Fred",4,4.5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(20,2002, 2021,"Morris",4.5,4.7,"no");
INSERT INTO BIT_DB.CityBikeLanes values(21,2012, 2020, "Jameson",4,3.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(22,2016, 2020,"MLK",4,3.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(23,2011, 2020, "Parker", 3.6, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(24,2008, 2020,"Thomas",4,4.8,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(25,2002, 2020,"Running",4.5,4.3,"no");
INSERT INTO BIT_DB.CityBikeLanes values(26,2012, 2021, "Waverly",4,4.5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(27,2016, 2021,"Addison",4,3.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(28,2011, 2021, "Beaver", 3.5, 2.1, "no");
INSERT INTO BIT_DB.CityBikeLanes values(29,2008, 2021,"Kensington",4,5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(30,2002, 2021,"Mouse",4.5,4.5,"no");
INSERT INTO BIT_DB.CityBikeLanes values(31,2012, 2020, "Chestnut",4,4.5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(32,2016, 2020,"Walnut",4,3.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(33,2011, 2020, "Market", 3.8, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(34,2008, 2020,"Locust",4,4.8,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(35,2002, 2020,"South",4.5,4.7,"no");
INSERT INTO BIT_DB.CityBikeLanes values(36,2012, 2021, "18th",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(37,2016, 2021,"2nd",4,3.2,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(38,2011, 2021, "Lombard", 3.5, 2.5, "no");
INSERT INTO BIT_DB.CityBikeLanes values(39,2008, 2021,"Pine",4,5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(40,2002, 2021,"Tasker",4.5,4.3,"no");
INSERT INTO BIT_DB.CityBikeLanes values(41,2012, 2020, "Earp",4,4.5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(42,2016, 2020,"Titan",4,3.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(43,2011, 2020, "Manning", 3.4, 2.7, "no");
INSERT INTO BIT_DB.CityBikeLanes values(44,2008, 2020,"Fieldcrest",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(45,2002, 2020,"York",4.5,4.4,"no");
INSERT INTO BIT_DB.CityBikeLanes values(46,2012, 2021, "Race",4,4.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(47,2016, 2021,"Museum",4,3.4,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(48,2011, 2021, "Altin", 3.7, 2, "no");
INSERT INTO BIT_DB.CityBikeLanes values(49,2008, 2021,"Fred",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(50,2002, 2021,"Morris",4.5,4.4,"no");
INSERT INTO BIT_DB.CityBikeLanes values(51,2012, 2020, "Jameson",4,4,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(52,2016, 2020,"MLK",4,4,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(53,2011, 2020, "Parker", 3.6, 2.3, "no");
INSERT INTO BIT_DB.CityBikeLanes values(54,2008, 2020,"Thomas",4,4.5,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(55,2002, 2020,"Running",4.5,4.5,"no");
INSERT INTO BIT_DB.CityBikeLanes values(56,2012, 2021, "Waverly",4,4.7,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(57,2016, 2021,"Addison",4,3.6,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(58,2011, 2021, "Beaver", 3.5, 2.5, "no");
INSERT INTO BIT_DB.CityBikeLanes values(59,2008, 2021,"Kensington",4,4.9,"yes");
INSERT INTO BIT_DB.CityBikeLanes values(60,2002, 2021,"Mouse",4.5,4.3,"no");
    
/* List all bike lanes with an average rating of 4.0 or higher, together with a label that grades them as as a "Safe Lane" */

WITH avg_bl_safety_CTE AS (
    SELECT city.street, AVG(city.safetyrating) AS safety_rating
    FROM CityBikeLanes city
    GROUP BY city.street
)

SELECT street, safety_rating, 'Safe Lane' AS grade
    FROM avg_bl_safety_CTE
    WHERE safety_rating >= 4
    ORDER BY safety_rating DESC;
    
/* Create a list of all bike lanes with their safety ratings, each (2) given by two 
safety experts, the average safety rating for each lane, and a label with an 
appropriate recommendation: "Remove", "Leave As-Is", or "Improvements Needed" */

SELECT street, safetyrating AS safety_rating, AVG(safetyrating) OVER (PARTITION BY street) AS average_safety_rating,
    CASE
        WHEN AVG(safetyrating) OVER (PARTITION BY street) >= 4 THEN 'Leave As-Is'
        WHEN AVG(safetyrating) OVER (PARTITION BY street) <= 2.5 THEN 'Remove'
        ELSE 'Improvements Needed'
    END AS recommendation    
    FROM CityBikeLanes
    ORDER BY average_safety_rating DESC;
