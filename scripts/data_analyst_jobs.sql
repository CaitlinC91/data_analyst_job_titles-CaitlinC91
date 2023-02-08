-- How many rows are in the data_analyst_jobs table?

SELECT COUNT(*)
FROM data_analyst_jobs;

--1793

-- Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT company
FROM data_analyst_jobs
LIMIT 10;

--ExxonMobil

-- How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT location
FROM data_analyst_jobs
WHERE location = 'TN';

-- 21 in TN, 

SELECT location
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY';

-- 27 in TN or KY

-- How many postings in Tennessee have a star rating above 4?

SELECT location, star_rating
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating >4;

-- 3

-- How many postings in the dataset have a review count between 500 and 1000?

SELECT review_count
FROM data_analyst_jobs
WHERE review_count
BETWEEN 500 AND 1000;

--151

-- Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC;

-- NE


-- Select unique job titles from the data_analyst_jobs table. How many are there?

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

--881


-- How many unique job titles are there for California companies?

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
GROUP BY location
HAVING location = 'CA';

-- 230

-- Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT company, AVG (star_rating), review_count
FROM data_analyst_jobs
WHERE company IS NOT Null
GROUP BY company, review_count
HAVING review_count>5000;

-- 45

-- Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

SELECT company, ROUND(AVG (star_rating),2) AS avg_rating, review_count
FROM data_analyst_jobs
WHERE company IS NOT Null
GROUP BY company, review_count
HAVING review_count>5000
ORDER BY avg_rating DESC;

-- there are 6 that tie, with a 4.20 avg rating
--American Express, Kaiser Permanente, General Motors, Nike, Unilever, Microsoft

-- Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title LIKE '%_nalyst%' OR title LIKE '%ANALYST%';
	

--1669

-- How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%_nalyst%' 
	OR title NOT LIKE '%ANALYST%';

-- BONUS: You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.

-- Disregard any postings where the domain is NULL.
-- Order your results so that the domain with the greatest number of hard to fill jobs is at the top.
-- Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?