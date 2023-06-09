--Create a grocery store database

CREATE TABLE store (id INTEGER PRIMARY KEY, item TEXT, section TEXT, price INTEGER, popularity INTEGER);

INSERT INTO store VALUES (1, "banana", "produce", 0.99, 80) ;
INSERT INTO store VALUES (2, "apple", "produce", 0.99, 45) ;
INSERT INTO store VALUES (3, "shampoo", "hygiene", 3.99, 58) ;
INSERT INTO store VALUES (4, "Coca Cola", "bulk", 4.99, 67) ;
INSERT INTO store VALUES (5, "ribeye steak", "meat", 7.99, 96) ;
INSERT INTO store VALUES (6, "cheese", "fresh", 6.25, 87) ;
INSERT INTO store VALUES (7, "tzatziki", "fresh", 3.99, 59) ;
INSERT INTO store VALUES (8, "soap", "hygiene", 4.99, 42) ;
INSERT INTO store VALUES (9, "pork chops", "meat", 8.99, 74) ;
INSERT INTO store VALUES (10, "fish fingers", "frozen", 5.99, 38) ;
INSERT INTO store VALUES (11, "brocolli", "frozen", 3.99, 83) ;
INSERT INTO store VALUES (12, "toilet paper", "bulk", 5.99, 64) ;
INSERT INTO store VALUES (13, "multivitamin", "health", 12.99, 76) ;
INSERT INTO store VALUES (14, "melatonin", "health", 9.99, 15) ;
INSERT INTO store VALUES (15, "chips", "snacks", 1.99, 80) ;

/* Display the database, ordered by price. */

SELECT * 
  FROM store
 ORDER BY price DESC ; 

/* What is the average price of items in the bulk section? */

SELECT AVG(price) AS 'Average Price'
  FROM store
 WHERE section = 'bulk' ; 

/* What are the 5 most popular items? */

SELECT item, price, popularity
  FROM store
 ORDER BY popularity DESC
 LIMIT 5 ; 
