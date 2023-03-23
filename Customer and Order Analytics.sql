/* Q: How many orders were placed in January? */

SELECT COUNT(orderid) as orders_placed
    FROM BIT_DB.JanSales
    WHERE length(orderid) = 6
    AND orderid <> 'Order ID';
    
/* Q: How many of those orders were for an iPhone? */

SELECT COUNT(orderid) AS iphone_orders
    FROM BIT_DB.JanSales
    WHERE product = 'iPhone'
    AND length(orderid) = 6
    AND orderid <> 'Order ID';   
       
/* Select the customer account numbers for all the orders that were placed in February */

SELECT distinct acctnum AS account_number
    FROM BIT_DB.customers 
    INNER JOIN BIT_DB.FebSales
    ON customers.order_id = FebSales.orderid
    WHERE length(orderid) = 6
    AND orderid <> 'Order ID';
        
/* Q: Which product was the cheapest one sold in January, and what was the price? */

SELECT product, MIN(price) AS price 
    FROM BIT_DB.JanSales
    GROUP BY product, price
    ORDER BY price ASC
    LIMIT 1; 

/* Q: What is the total revenue for each product sold in January? Revenue can be calculated using the number of products sold and the price of the products */

SELECT product, SUM(quantity)*price AS revenue
    FROM BIT_DB.JanSales
    GROUP BY product;

/* Q: Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue? */

SELECT product, sum(quantity) AS quantity, SUM(quantity) * price AS revenue 
    FROM BIT_DB.FebSales
    WHERE location = '548 Lincoln St, Seattle, WA 98101'
    GROUP BY product; 
    
/* Q: How many customers ordered more than 2 products at a time in February, and what was the average amount spent for those customers? */

SELECT COUNT(distinct customers.acctnum) AS customers, AVG(febsales.quantity * price) AS average_amount_spent 
    FROM BIT_DB.febsales 
    LEFT JOIN BIT_DB.customers 
    ON febsales.orderid = customers.order_id
    WHERE febsales.quantity > 2 
    AND length(orderid) = 6
    AND orderid <> 'Order ID';
   
/* List all the products sold in Los Angeles in February and include how many of each were sold. */

SELECT product, SUM(quantity) AS quantity
    FROM BIT_DB.FebSales
    WHERE location LIKE '%Los Angeles%'
    GROUP BY product
    
    /* Which locations in New York received at least 3 orders in January, and how many orders did they each receieve? */
/* Which locations in New York received at least 3 orders in January, and how many orders did they each receive? */

SELECT distinct location, COUNT(orderID)
    FROM BIT_DB.JanSales
    WHERE location LIKE '%NY%'
    AND length(orderid) = 6 
    AND orderid <> 'Order ID'
    GROUP BY location
    HAVING COUNT(orderID) > 2;

/* How many of each type of headphone were sold in February? */

SELECT product, SUM(quantity) AS total_sold, price
    FROM BIT_DB.FebSales 
    WHERE product LIKE '%headphones%'
    GROUP BY product;

/* What was the average amount spent per account in February? */

SELECT AVG(febsales.quantity * febsales.price) AS average_spend
    FROM BIT_DB.FebSales  
    LEFT JOIN customers 
    ON FebSales.orderID = customers.order_id
    WHERE length(orderid) = 6 
    AND orderid <> 'Order ID';

/* What was the average quantity of products purchased per account in February? */

SELECT SUM(febsales.Quantity) / COUNT(customers.acctnum) AS average_quantity
    FROM BIT_DB.FebSales
    LEFT JOIN customers
    On febsales.orderid = customers.order_id 
    WHERE length(orderid) = 6 
    AND orderid <> 'Order ID';

/* Which product brought in the most revenue in January, and how much revenue did it bring in total? */

SELECT product, quantity, price, SUM(quantity*price) AS revenue
    FROM BIT_DB.JanSales
    WHERE length(orderid) = 6 
    AND orderid <> 'Order ID'
    GROUP BY product
    ORDER BY revenue DESC
    LIMIT 1;
