-- Querying to categorize Products based on their price --
SELECT ProductID,
       ProductName,
	   Price,
	   CASE -- categorizes the products into price categories : Low,Medium,High
	     WHEN Price < 50 THEN 'Low'
		 WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		 ELSE 'High'
	   END AS Price_Category
FROM products
