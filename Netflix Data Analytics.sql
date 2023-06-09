/* Q: How many movie titles are there in the database? */

SELECT COUNT(*) AS 'Total Number of Movies'
  FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" 
 WHERE type='Movie' ;

/* Q: When was the most recent batch of tv shows and/or movies added to the database? **/

SELECT MAX(DATE(date_added)) AS 'Recent Additions'
  FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" ;

/* List all the movies and tv shows in alphabetical order. */

SELECT title AS 'Title'
  FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
 ORDER BY title ASC ;

/* Q: Who was the Director for the movie Bright Star? */

SELECT people.director AS 'Director', title.title AS 'Title'
  FROM "CharlotteChaze/BreakIntoTech"."netflix_people" people
       LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_titles_info" title
       ON people.show_id = title.show_id
          WHERE title.title = 'Bright Star' ;

/* Q: What is the oldest movie in the database and what year was it made? */

SELECT title AS 'Title', release_year AS 'Release Year'
  FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
 WHERE type = 'Movie'
 ORDER BY release_year ASC
 LIMIT 1 ;
