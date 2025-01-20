-- Common Table Expression (CTE) to identify and tag duplicate records
WITH DuplicateRecords As (
  SELECT 
    JourneyID, 
    CustomerID, 
    ProductID, 
    VisitDate, 
    Stage, 
    Action, 
    Duration, 
    ROW_NUMBER() OVER(
      PARTITION BY CustomerID, 
      ProductID, 
      VisitDate, 
      Stage, 
      Action 
      ORDER BY 
        JourneyID
    ) AS row_num -- This creates a new column 'row_num' that numbers each row within its partition
  FROM 
    customer_journey
) -- Select all records from the CTE where row_num > 1, which indicates duplicate entries
SELECT 
  * 
FROM 
  DuplicateRecords 
WHERE 
  ROW_NUM > 1 
ORDER BY 
  JourneyID;
-- Outer query selects the final cleaned and standardized data
SELECT 
  JourneyID, 
  CustomerID, 
  ProductID, 
  VisitDate, 
  Stage, 
  Action, 
  COALESCE(Duration, avg_duration) AS Duration -- Replaces missing durations with the average duration for the corresponding date
FROM 
  (
    SELECT 
      JourneyID, 
      CustomerID, 
      ProductID, 
      VisitDate, 
      UPPER(Stage) AS Stage, 
      Action, 
      Duration, 
      AVG(Duration) OVER(PARTITION BY VisitDate) as avg_duration, 
      -- Calculates the average duration for each date
      ROW_NUMBER() OVER(
        PARTITION BY CustomerID, 
        ProductID, 
        VisitDate, 
        UPPER(Stage), 
        Action 
        ORDER BY 
          JourneyID
      ) AS row_num -- Assigns a row number to each row within the partition to identify duplicates
    FROM 
      customer_journey
  ) AS subquery 
WHERE 
  row_num = 1
