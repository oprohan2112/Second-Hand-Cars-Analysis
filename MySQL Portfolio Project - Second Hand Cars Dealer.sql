
--                             --   MySQL PortFOlio Project - SECOND HAND CARS DEALER ANALYSIS  --

CREATE SCHEMA cars ; 
USE cars;

-- Q1)  READ DATA car_dekho -- 
SELECT * FROM cars.car_dekho;
               -- OR -- 
SELECT * FROM car_dekho ;


-- Q2) TOTAL Cars : To Get a count of total records --
SELECT count(*) FROM car_dekho ; 


-- Q3) The Manager Asked Employee how many cars will be avaliable in 2023? --
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2023;


-- Q4) The Manager Asked Employee how many cars is avaliable in 2020 , 2021 ,2022 ? --
SELECT year , COUNT(*) as cars FROM car_dekho 
WHERE year IN ( 2020 , 2021 , 2022 ) 
GROUP BY year
ORDER BY year ASC ;


-- Q5) Client asked me to print total of all cars by year . i dont see the all details --
SELECT year , COUNT(*) FROM car_dekho 
GROUP BY year 
ORDER BY year ASC ;


--  Q6) Client asked to car dealer agent , how many diesel cars will there be in 2020 ? -- 
SELECT * FROM car_dekho ;
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2020 
GROUP BY fuel 
Having fuel = 'Diesel' ; 
                   -- OR -- 
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2020 AND fuel = "Diesel" ;


-- Q7)Client asked to car dealer agent , how many petrol cars will there be in 2020 ? --
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2020 
GROUP BY fuel 
Having fuel = "Petrol" ; 
                   -- OR -- 
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2020 AND fuel = "Petrol" ;


-- Q8) The Manager Told the employye to give the print all fuel cars come by all years -- 
SELECT year ,COUNT(*) AS Petrol_cars FROM car_dekho 
WHERE fuel = "Petrol"
GROUP BY year ;
SELECT year , COUNT(*) AS Diesel_cars FROM car_dekho 
WHERE fuel = "Diesel"
GROUP BY year ;
SELECT year , COUNT(*) AS CNG_cars FROM car_dekho 
WHERE fuel = "CNG"
GROUP BY year ; 


-- Q9) Manager Said there were more then 100 cars in a given year , which year had more than 100 cars ?? -- 
SELECT year , COUNT(*) FROM car_dekho 
GROUP BY year 
HAVING COUNT(*) > 100 ;


-- Q10) MAnager Said there were less than 50 cars in a given year , which year had less than 50 cars ?? -- 
SELECT year , COUNT(*) FROM car_dekho 
GROUP BY year 
HAVING COUNT(*)<50 ;


-- Q11) The Manager said to employee All cars count details between 2015 to 2023 , we need a yearwise complete list --
SELECT year , COUNT(*) FROM car_dekho 
WHERE year > 2015 AND year < 2023 
GROUP BY year ;
                -- OR -- 
SELECT year , COUNT(*) FROM car_dekho 
WHERE year BETWEEN 2015 AND 2023 
GROUP BY year;


-- Q12) The Manager said to employee All cars details between 2015 to 2023 , we need a yearwise complete list --
SELECT * FROM car_dekho 
WHERE year BETWEEN 2015 AND 2023;








