-- Query to clean and normalize the engagement_data table
SELECT 
  EngagementID, 
  ContentID, 
  CampaignID, 
  ProductID, 
  UPPER(
    REPLACE(
      ContentType, 'SocialMedia', 'Social Media'
    )
  ) AS ContentType, 
  -- replaces 'socialmedia' with 'social media' and convert every rows to uppercase
  LEFT(
    ViewsClicksCombined, 
    CHARINDEX('-', ViewsClicksCombined) -1
  ) AS Views, 
  -- extracts views before '-' from substring
  RIGHT(
    ViewsClicksCombined, 
    LEN(ViewsClicksCombined)- CHARINDEX('-', ViewsClicksCombined)
  ) AS Clicks, 
  -- extracts clicks after '-' from substring
  Likes, 
  FORMAT(
    CONVERT(Date, EngagementDate), 
    'dd.MM.yyyy'
  ) AS EngagementDate -- converts EngagementDate to Date and formats to 'dd.MM.yyyy'
FROM 
  engagement_data 
WHERE 
  ContentType != 'Newsletter'
