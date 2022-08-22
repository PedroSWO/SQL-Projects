-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

--4 What is the largest population size for Gabon in this dataset?

SELECT Max(population)
from population_years
WHERE country = "Gabon";

--5 What were the 10 lowest population countries in 2005?

SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC LIMIT 10;

--6 What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country
FROM population_years
WHERE population > 100 and YEAR = 2010;

--7 How many countries in this dataset have the word “Islands” in their name?

SELECT COUNT (*)
FROM population_years
WHERE country LIKE "%Islands%";

--8 What is the difference in population between 2000 and 2010 in Indonesia?

SELECT * 
FROM population_years
WHERE country = "Indonesia" and year = 2000
OR country = "Indonesia" and year = 2010;