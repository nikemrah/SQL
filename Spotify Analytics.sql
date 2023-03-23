# In this project, I downloaded Spotify data from Kaggle, then I created a table into which I inserted the Spotify data. Finally, I performed data analytics using SQL.

# This is the code that I used to create the table: 

CREATE TABLE BIT_DB.Spotifydata (
id integer PRIMARY KEY,
artist_name varchar NOT NULL,
track_name varchar NOT NULL,
track_id varchar NOT NULL,
popularity integer NOT NULL,
danceability decimal(4,3) NOT NULL,
energy decimal(4,3) NOT NULL,
key integer NOT NULL,
loudness decimal(5,3) NOT NULL,
mode integer NOT NULL,
speechiness decimal(5,4) NOT NULL,
acousticness decimal(6,5) NOT NULL,
instrumentalness text NOT NULL,
liveness decimal(5,4) NOT NULL,
valence decimal(4,3) NOT NULL,
tempo decimal(6,3) NOT NULL,
duration_ms integer NOT NULL,
time_signature integer NOT NULL 
)

# After creating the table, I inserted the Spotify Data CSV into the table. Finally, I explored the data, answering questions using the following SQL queries: 

/* What is the average popularity, danceability, and energy by artist and track? */

SELECT artist_name AS 'Artist', track_name AS 'Song', 
       AVG(popularity) AS 'Average Popularity', 
       AVG(danceability) AS 'Average Danceability', 
       AVG(energy) AS 'Average_Energy'
  FROM BIT_DB.spotifydata
 GROUP BY artist_name, track_name ;
    
/* Who are the top 10 artists based on popularity? */

SELECT DISTINCT artist_name AS 'Artist', popularity AS 'Popularity'
  FROM BIT_DB.spotifydata
 ORDER BY popularity DESC
 LIMIT 10 ;

/* Which artist released the longest song? */

SELECT artist_name AS 'Artist', track_name as 'Song', duration_ms AS 'Track Length'
  FROM BIT_DB.spotifydata
 ORDER BY duration_ms DESC
 LIMIT 1 ;

/* What is the average danceability for the 10 most popular songs? */

SELECT AVG(danceability) AS 'Average Danceability'
  FROM BIT_DB.spotifydata
 WHERE track_name 
    IN (SELECT track_name AS 'Song'
          FROM BIT_DB.spotifydata 
         ORDER BY popularity DESC 
         LIMIT 10) ;
        
/* Which artists have songs with a popularity of 80 or above? */

SELECT DISTINCT artist_name AS artist, popularity
    FROM BIT_DB.spotifydata
    WHERE popularity >= 80
    GROUP BY artist_name 
    ORDER BY popularity DESC;

/* Which artist(s) has/have the most songs on this list? */

SELECT artist_name AS 'Artist', 
       COUNT(artist_name) AS 'Total Number of Songs'
  FROM BIT_DB.spotifydata
 GROUP BY artist_name    
HAVING COUNT(artist_name) > 1
 ORDER BY COUNT(artist_name) DESC
 LIMIT 2 ;        
    
/* What is the average tempo of the top 25 most popular songs? */

SELECT AVG(tempo) AS 'Average Tempo'
 FROM BIT_DB.spotifydata
WHERE track_name
   IN (SELECT track_name AS 'Track Name'
         FROM BIT_DB.spotifydata 
        ORDER BY popularity DESC 
        LIMIT 25) ;

/* Which artist has the song with the most energy in this playlist? */ 

SELECT artist_name AS 'Artist', track_name AS 'Song', energy AS 'Energy'
  FROM BIT_DB.spotifydata
 GROUP BY artist_name
 ORDER BY energy DESC
    LIMIT 1 ;
    
/* Calculate the average popularity of the artists. Then, show the name and average popularity of each artist with a score of 90 or above and rank them as a "top star" */ 

/* TBD */
