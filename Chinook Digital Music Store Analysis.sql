/** Show customers (their full names, customer ID, and country) who are not in the USA. */

SELECT customerid AS 'Customer ID', firstname AS 'First Name', lastname AS 'Surname', country AS 'Country'
  FROM customers 
 WHERE country <> 'USA' ;
 
/* Show only the Customers from Brazil. */

SELECT customerid AS 'Customer ID', firstname AS ' First Name', lastname AS 'Surname', country AS 'Country'
  FROM customers
 WHERE country = 'Brazil' ;

/* Find the invoices of customers from Brazil. The resulting table should show the customer's full name, the invoice ID, the date of the invoice, and the billing country. */

SELECT c.customerid AS 'Customer ID', c.firstname AS 'First Name', c.lastname AS 'Surname', i.invoiceid AS 'Invoice ID', i.invoicedate AS 'Invoice Date', i.billingcountry AS 'Billing Country'
  FROM customers AS c
       JOIN invoices AS i 
       ON c.customerid = i.customerid
          WHERE c.country = 'Brazil' ;
          
/* Show the Employees who are Sales Agents. */

SELECT firstname AS 'First Name', lastname AS 'Last Name', title AS 'Role'
  FROM employees
 WHERE title = 'Sales Support Agent' ;
 
/* Find a unique/distinct list of billing countries from the Invoice table. */

SELECT DISTINCT billingcountry AS 'Billing County'
  FROM invoices ; 
  
/* Provide a query that shows the invoices associated with each sales agent. The resulting table should include the Sales Agent's full name. */

SELECT e.firstname AS 'First Name', e.lastname AS 'Surname', i.invoiceid AS 'Invoice ID' 
  FROM employees AS e
       JOIN customers AS c
       ON e.employeeid = c.supportrepid 
       JOIN invoices AS i  
       ON c.customerid = i.customerid ; 
       
/* Show the invoice total, customer name, country, and sales agent name for all invoices and customers. */

SELECT e.firstname AS 'Sales Agent First Name', e.lastname AS 'Sales Agent Surname', i.total AS 'Invoice Total', c.firstname AS 'Customer First Name', c.lastname AS 'Customer Surname',  c.country AS 'Country' 
  FROM employees AS e
       JOIN customers AS c
       ON e.employeeid = c.supportrepid
       JOIN invoices AS i
       ON c.customerid = i.customerid
          ORDER BY e.lastname ; 
          
/* How many invoices were there in 2009? */

SELECT COUNT(invoiceid) AS 'Invoice Total 2009'
  FROM invoices 
 WHERE invoicedate LIKE '2009%' ;
 
 /* What are the sales totals for 2009? */

SELECT ROUND(SUM(total), 2) AS 'Sales Total'
  FROM invoices 
 WHERE invoicedate LIKE '2009%' ; 
 
/* Write a query that includes the purchased track name with each invoice line ID. */

SELECT t.name AS 'Song', i.invoicelineid AS 'Invoice Line ID'
  FROM tracks AS t
       JOIN invoice_items AS i
       ON t.trackid = i.trackid ;
       
/* Write a query that includes the purchased track name and artist name with each invoice line ID. */

SELECT t.name AS 'Song', ar.name AS 'Artist', i.invoicelineid AS 'Invoice Line ID'
  FROM tracks AS t
       JOIN albums AS al
       ON t.albumid = al.albumid
       JOIN artists AS ar
       ON al.artistid = ar.artistid
       JOIN invoice_items AS i
       ON t.trackid = i.trackid ;
       
/* Provide a query that shows all the tracks, their album, media type, and genre. */

SELECT t.name AS 'Song', a.title AS 'Album', m.name AS 'Media Type', g.name AS 'Genre'
 FROM tracks AS t
      JOIN albums AS a
      ON t.albumid = a.albumid
      JOIN media_types as m
      ON t.mediatypeid = m.mediatypeid
      JOIN genres AS g
      ON t.genreid = g.genreid 
         ORDER BY a.title ;
         
/* Show the total sales made by each sales agent. */

SELECT e.firstname AS 'First Name', e.lastname AS 'Surname', e.title AS 'Title', 
       ROUND(SUM(i.total), 2) AS 'Total Sales ($)'
  FROM customers AS c
       JOIN employees AS e
       ON c.supportrepid = e.employeeid
       JOIN invoices AS i
       ON i.customerid = c.customerid  
            WHERE e.title = 'Sales Support Agent'     
            GROUP BY e.lastname ;

/* Which sales agent made the most dollars in sales in 2009? */

SELECT e.firstname AS 'First Name', e.lastname AS 'Surname', e.title AS 'Title',
       ROUND(SUM(i.total), 2) AS 'Sales Total ($)'
  FROM employees AS e
       JOIN customers AS c 
       ON e.employeeid = c.supportrepid
       JOIN invoices AS i
       ON c.customerid = i.customerid
          WHERE e.title = 'Sales Support Agent'
          AND i.invoicedate LIKE '2009%'
          GROUP BY e.lastname
          ORDER BY ROUND(SUM(i.total), 2) DESC
          LIMIT 1 ;         
     
/* Compile a list showing who each sales agent report to */

SELECT e2.lastname AS 'Agent Surname', e1.lastname AS 'Boss' 
  FROM employees AS e1
       RIGHT JOIN employees AS e2
       ON e1.employeeid = e2.reportsto 
          ORDER BY e1.employeeid ;
         
/* List how many tracks are in each genre */

SELECT g.name AS 'Genre', COUNT(t.name) AS 'Songs'
  FROM genres AS g
       JOIN tracks AS t 
         ON g.genreid = t.genreid
            GROUP BY genre ;
            
/* How many songs are on each playlist? */

SELECT p1.name AS 'Playlist', 
       COUNT(p2.trackid) AS 'Number of Songs'
  FROM playlists as p1
       JOIN playlist_track AS p2 
       ON p1.playlistid = p2.playlistid 
       JOIN tracks AS t
       ON t.trackid = p2.trackid 
          GROUP BY p1.name ;  
          
/* How many customers are assigned to each sales agent? */

SELECT e.firstname AS 'First Name', e.lastname AS 'Surname', e.title AS 'Title',
       COUNT(c.supportrepid) AS 'Customers'
       FROM employees AS e
            JOIN customers AS c
              ON c.supportrepid = e.employeeid
                 GROUP BY e.lastname ; 
                 
/* Which country spent the most? */

SELECT billingcountry AS 'Country', 
       ROUND(SUM(total), 2) AS 'Total Sales ($)'
  FROM invoices
 GROUP BY billingcountry   
 ORDER BY ROUND(SUM(total), 2) DESC 
 LIMIT 1 ;
