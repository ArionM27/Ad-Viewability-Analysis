-- Strictly Digital Advertising Data
-- ***Main Focus 1: Which ad placements, banners, or campaigns are the most effective in terms of user engagement and ROI?

-- Which placements have the highest engagement (CTR)?
SELECT placement, AVG(ctr) AS avg_ctr
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY placement
ORDER BY avg_ctr DESC;

-- Which banners have the highest engagement (CTR)?
SELECT banner, AVG(ctr) AS avg_ctr
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY banner
ORDER BY avg_ctr DESC;



-- Which campaigns have the highest engagement (CTR)?
SELECT campaign_number, AVG(ctr) AS avg_ctr
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number
ORDER BY avg_ctr DESC;



-- Which placements have the highest (ROI)
SELECT placement, AVG(roi) AS avg_roi
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY placement
ORDER BY avg_roi DESC;


-- Which banners have the highest (ROI)
SELECT banner, AVG(roi) AS avg_roi
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY banner
ORDER BY avg_roi DESC;



-- Which campaigns have the highest (ROI)
SELECT campaign_number, AVG(roi) AS avg_roi
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number
ORDER BY avg_roi DESC;


-- ***Main Focus 2: How does user engagement affect post-click conversions and sales performance?

-- What is the conversion rate (post-click conversions) for each campaign?
SELECT campaign_number, cr
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number;


-- What is the average post-click sales amount for each campaign?
SELECT campaign_number, 
       AVG(post_click_sales_amount) AS avg_post_click_sales
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number;


-- Does higher engagement (CTR) correlate with higher post-click conversions?
SELECT AVG(ctr) AS avg_ctr, AVG(post_click_conversions) AS avg_conversions
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%';


-- What is the relationship between the number of displays and post-click conversions for each campaign?
SELECT campaign_number, 
       SUM(displays) AS total_displays,
       SUM(post_click_conversions) AS total_conversions
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number
ORDER BY total_displays DESC;

-- Which placements and banners have the highest post-click conversions?
SELECT placement, banner, SUM(post_click_conversions) AS total_conversions
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY placement, banner
ORDER BY total_conversions DESC;


-- ***Main Focus 3: What are the trends in ad visibility (clicks, conversions, display) over time, and which campaigns/placements are most effective over different periods?

-- What are the trends in the total number of displays, clicks, and conversions over time (daily or weekly)?
SELECT day, 
       SUM(displays) AS total_displays, 
       SUM(clicks) AS total_clicks, 
       SUM(post_click_conversions) AS total_conversions
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY day
ORDER BY day;

-- What is the CTR trend over time?
SELECT day, AVG(ctr) AS avg_ctr
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY day
ORDER BY day;


-- How does ROI fluctuate over different periods?
--Monthly 
SELECT month, AVG(roi) AS avg_roi
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY month
ORDER BY month;

-- Which campaigns have the highest performance over Monthly Periods?
SELECT month, 
       campaign_number, 
       SUM(displays) AS total_displays,
       SUM(clicks) AS total_clicks,
       SUM(post_click_conversions) AS total_conversions
FROM ad_information
WHERE displays > 1000 AND placement NOT LIKE '%Physical%'
GROUP BY month, campaign_number
ORDER BY total_conversions DESC;


-- Which ad placements provide the greatest number of low display counts?
SELECT placement, COUNT(*) AS low_display_count
FROM ad_information
WHERE displays <= 1000 AND placement NOT LIKE '%Physical%'
GROUP BY placement
ORDER BY low_display_count DESC;

-- Which banner sizes provide the greatest number of low display counts?
SELECT banner, COUNT(*) AS low_display_count
FROM ad_information
WHERE displays <= 1000 AND placement NOT LIKE '%Physical%'
GROUP BY banner
ORDER BY low_display_count DESC;

--Which campaign provided the greatest number of low display counts?
SELECT campaign_number, COUNT(*) AS low_display_count
FROM ad_information
WHERE displays <= 1000 AND placement NOT LIKE '%Physical%'
GROUP BY campaign_number
ORDER BY low_display_count DESC;