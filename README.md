 Data Analyst Portfolio Project – Marketing Analysis  

 Introduction to Business Problem  

ShopEasy, an online retail business, has observed declining customer engagement and conversion rates despite launching several online marketing campaigns. Additionally, the company's high marketing expenses have not delivered expected returns, prompting the need for a comprehensive data analysis to optimize marketing strategies.  

 Key Issues  
1. Reduced Customer Engagement: Fewer interactions with the site and marketing content.  
2. Decreased Conversion Rates: Lower percentage of visitors converting into paying customers.  
3. High Marketing Expenses: Increased investments without corresponding ROI.  
4. Customer Feedback: A need to analyze customer opinions to improve engagement and conversions.  



 Business Request & User Stories  

 Business Request  
The Marketing Manager at ShopEasy requested an in-depth analysis of marketing performance, customer behaviour, and feedback to identify actionable insights for improving conversion rates and engagement.  

 User Stories  
1. Marketing Managers:  
    Need a dashboard summarizing campaign performance to optimize strategies and increase ROI.  
2. Content Strategists:  
    Require insights into customer interaction with different marketing content to create more engaging campaigns.  
3. Executives:  
    Need an overview of customer feedback and sentiment to guide strategic decisions on product and service improvements.  



 Goals  

 1. Increase Conversion Rates  
 Goal: Identify factors impacting conversion rates and recommend improvements.  
 Insight: Highlight stages where visitors drop off and suggest strategies to optimize the conversion funnel.  

 2. Enhance Customer Engagement  
 Goal: Analyze content types that drive the highest engagement.  
 Insight: Inform content strategies by identifying high-performing content.  

 3. Improve Customer Feedback Scores  
 Goal: Understand common themes in customer reviews and provide actionable insights.  
 Insight: Address recurring negative feedback and enhance overall customer satisfaction.  



 Data Cleansing & Transformation (SQL)  

The analysis was powered by a structured data model built using the following tables:  

1. DIM_Customers: Contains demographic details and customer profiles.  
2. DIM_Products: Includes product categories, descriptions, and pricing.  
3. FACT_Customer_Journey: Tracks customer interactions across marketing touchpoints.  
4. FACT_Customer_Reviews: Stores customer reviews, ratings, and sentiment scores.  
5. FACT_Engagement_Data: Captures campaign-level engagement metrics like click-through rates and conversions.  

SQL was used to extract, cleanse, and transform data, ensuring integrity and consistency for analysis in Power BI.  



 Power BI Dashboards  

 Campaign Performance Dashboard  
 Purpose: Summarizes campaign ROI, engagement metrics, and conversion trends.  
 Key Features:  
   KPIs like clickthrough rates (CTR), ROI, and conversion rates.  
   Visualizations of campaign performance over time.  

 Customer Insights Dashboard  
 Purpose: Provides a detailed analysis of customer behaviour and interactions.  
 Key Features:  
   Drilldown capabilities for customer segmentation.  
   Retention trends and customer engagement levels.  

 Content Engagement Dashboard  
 Purpose: Analyzes engagement levels with different marketing content.  
 Key Features:  
   Performance of content types (videos, images, blogs).  
   Interaction trends across campaigns.  

 Customer Feedback Analysis  
 Purpose: Offers insights into customer reviews and sentiment.  
 Key Features:  
   Sentiment analysis (processed using Pandas) categorizing reviews as positive, negative, or mixed.  
   Ratings distribution trends and common feedback themes.  



 Key Insights  

 Customer Feedback Analysis  
1. Customer Ratings Distribution:  
    The majority of reviews are positive, with 140 reviews at 4 stars and 135 at 5 stars.  
    Negative ratings (1-2 stars) are fewer but highlight areas for improvement.  

2. Sentiment Analysis:  
    Positive sentiments dominate (275 reviews), but 82 negative and mixed sentiments indicate areas to address.  
    Addressing mixed positive and mixed negative reviews presents an opportunity to improve overall customer satisfaction.  

 Marketing Campaign Performance  
 High-performing campaigns included personalized email strategies, yielding higher engagement and ROI.  
 Underperforming campaigns lacked clear targeting and optimization.  

 Content Insights  
 Interactive content such as videos and quizzes drove the highest engagement, while static ads performed poorly.  



 Tools & Technologies  

 SQL: Data extraction and transformation from DIM and FACT tables.  
 Power BI: Dashboard development for real-time insights.  
 Pandas: Sentiment analysis of customer reviews.  

