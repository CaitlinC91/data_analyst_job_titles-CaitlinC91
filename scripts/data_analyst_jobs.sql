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

SELECT

-- How many postings in the dataset have a review count between 500 and 1000?

-- Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?

-- Select unique job titles from the data_analyst_jobs table. How many are there?

-- How many unique job titles are there for California companies?

-- Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

-- Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

-- Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

-- How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

-- BONUS: You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.

-- Disregard any postings where the domain is NULL.
-- Order your results so that the domain with the greatest number of hard to fill jobs is at the top.
-- Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?