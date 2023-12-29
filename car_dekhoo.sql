CREATE SCHEMA cars;
USE cars;
-- read data --
SELECT * FROM car_dekho;

-- total cars: to get a count of total records --
SELECT count(*) FROM car_dekho;

-- the manager asked the employee how many cars will be available in 2023?--
SELECT count(*) FROM car_dekho WHERE year = 2023;

-- the manager asked employee how many cars available in 2020,2023,2022 --
SELECT count(*) FROM car_dekho WHERE year in (2023,2020,2022) GROUP by year;
-- total count --
SELECT count(*) FROM car_dekho WHERE year in (2023,2022,2020);

-- client asked to car dealer agent how many diesel cars will there be in 2020 ?
SELECT count(*) FROM car_dekho WHERE year = 2020 and fuel = "diesel";

-- client requested a car dealer agent how many petrol cars will there be in 2020 ?
SELECT count(*) FROM car_dekho WHERE year = 2020 and fuel ="petrol";

-- the manager told the employee to give a print all the fuel cars (petrol,diesel and CNG) come by all year --
SELECT year,count(*) FROM car_dekho WHERE fuel = "petrol" GROUP by year;
SELECT year, count(*) FROM car_dekho WHERE fuel = "diesel" GROUP by year;
SELECT year,count(*) FROM car_dekho WHERE fuel = "CNG" GROUP by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars --
SELECT year, count(*) FROM car_dekho GROUP by year HAVING count(*)>100;
SELECT year, count(*) FROM car_dekho GROUP by year HAVING count(*)<50;

-- the manager said to the employee all cars count details between 2015 and 2023 we need complete list --
SELECT count(*) FROM car_dekho WHERE year between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 to 2023 we need complete list -- 
SELECT * FROM car_dekho WHERE year between 2015 and 2023;















