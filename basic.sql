-- The example uses a WHERE clause to show the population of 'Germany'; 
SELECT population FROM world
  WHERE name = 'Germany'

-- Checking a list The word IN allows us to check if an item is in a list.
--  The example shows the name AND population for the countries ('Sweden', 'Norway', 'Denmark').
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- The example below shows countries with an area of 200,000-250,000 sq. km.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- Select the code that shows the population density of China, Australia, Nigeria AND France 
SELECT name, area/population
FROM world WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

-- Select the code that would show the countries with an area larger than 50000 AND a population smaller than 10000000 
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

--  Select the code which shows the countries that end in A or L 
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

-- SQL commAND to show the name, continent AND population of all countries. 
SELECT name, continent, population FROM world

-- Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world
WHERE population >= 200000000

-- Give the name AND the per capita GDP for those countries with a population of at least 200 million. 
SELECT name, GDP/population FROM world WHERE population >= 200000000

-- Show the name AND population in millions for the countries of the continent 'South America'.
SELECT name, population/1000000 FROM world WHERE continent =  'South America';

-- Show the name AND population for France, Germany, Italy 
SELECT name, population FROM world WHERE name in ('France', 'Germany', 'Italy');

-- Show the countries which have a name that includes the word 'United' 
SELECT name FROM world WHERE name LIKE '%United%';

-- Show the countries that are big by area or big by population. Show name, population AND area.
-- Two ways to be big: A country is big if it has an area of more than 3 million sq km or
-- it has a population of more than 250 million. 
SELECT name, population, area FROM world WHERE population >= 250000000 OR area >= 3000000;

-- Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or 
-- big by population (more than 250 million) but not both. Show name, population AND area.
SELECT name, population, area FROM world WHERE (population < 250000000 AND area >= 3000000) OR 
(population >= 250000000 AND area < 3000000);
-- another answer
SELECT name,
       population,
       area
  FROM world
 WHERE (area > 3000000) <> /*XOR*/ (population > 25000000)

--  Show the name AND population in millions AND the GDP in billions for the countries of 
-- the continent 'South America'. Use the ROUND function to show the values to two decimal places. 
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America';

-- Show the name AND per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). 
-- Round this value to the nearest 1000.
<<<<<<< HEAD
SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp > 1000000000000;
=======
SELECT name, ROUND(gdp/1000000000, -3) FROM world WHERE gdp > 1000000000000;
>>>>>>> 094df095ffc04259d07d4024723a75de70ae582a

-- Show the name AND capital where the name AND the capital have the same number of characters.
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)

--  Show the name AND the capital where the first letters of each match. 
-- Don't include countries where the name AND the capital are the same word.
SELECT name, capital FROM world WHERE LEFT(name,1) = (LEFT(capital,1)) AND (name <> capital);

-- Find the country that has all the vowels AND no spaces in its name.
<<<<<<< HEAD
SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND 
name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';

=======
SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';
>>>>>>> 094df095ffc04259d07d4024723a75de70ae582a
