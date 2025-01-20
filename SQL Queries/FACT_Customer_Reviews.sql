-- Query to clean whitespace issues in the ReviewText column
SELECT 
  ReviewID, 
  CustomerID, 
  ProductID, 
  ReviewDate, 
  Rating, 
  REPLACE(ReviewText, '  ', ' ') AS ReviewText -- replaces double spaces with single space
FROM 
  customer_reviews
