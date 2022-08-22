--3 How many entries in the countries table are from Africa?

SELECT COUNT (*) 
FROM countries
WHERE continent = "Africa";

--4 What was the total population of the continent of Oceania in 2005?

SELECT SUM(population)
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2005
AND continent = 'Oceania';

--5 What is the average population of countries in South America in 2003?

SELECT AVG(population)
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2003
AND continent = 'South America';

--6 What country had the smallest population in 2007?

SELECT MIN (population),
name
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007;

--7 What is the average population of Poland during the time period covered by this dataset?

SELECT AVG(population),
name
FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE name= "Poland";

--8 How many countries have the word “The” in their name?

SELECT COUNT(*)
FROM countries
WHERE name LIKE "%The%";

--9 What was the total population of each continent in 2010?

SELECT SUM(population),
continent
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;