-- Select all the rows
select * from [Road Accidents];

-- count the total number present in Accident_index
select Count(Accident_index) as total_count from [Road Accidents];
--307973

-- Total Casualties in Road Accident
select sum(number_of_casualties) as CY_Casualties from [Road Accidents];
--417883

-- Total Casualties in Road Accident of Current Year
select sum(number_of_casualties) as CY_Casualties from [Road Accidents]
where Year(Accident_Date)='2022';
--195737

-- Total Casualties in Road Accident of Current Year and road surface condition should be Dry
select sum(number_of_casualties) as CY_Casualties from [Road Accidents]
where Year(Accident_Date)='2022' and Road_Surface_Conditions='Dry';
--131976

-- Total Current Year Accident
select count(Distinct Accident_Index) as CY_Accidents from [Road Accidents]
where Year(Accident_Date)='2022';
--144419

--Total  Fatal Casualties
select Sum(Number_of_Casualties) as Fatal_Casualties
from [Road Accidents]
where  Accident_Severity='Fatal';
--7135

--Total Current Year Fatal Casualties
select Sum(Number_of_Casualties) as CY_Fatal_Casualties
from [Road Accidents]
where YEAR(Accident_Date)='2022' and Accident_Severity='Fatal';
--2855

--Total Current  Year Serious Casualties
select Sum(Number_of_Casualties) as CY_Serious_Casualties
from [Road Accidents]
where YEAR(Accident_Date)='2022' and Accident_Severity='Serious';
--27045

--Total Current Year Slight Casualties
select Sum(Number_of_Casualties) as CY_Serious_Casualties
from [Road Accidents]
where YEAR(Accident_Date)='2022' and Accident_Severity='Slight';
--165837

--Total Fatal Casualties
select cast(Sum(Number_of_Casualties) as Decimal(10,2)) *100/
(Select cast(sum(Number_of_Casualties) as Decimal(10,2)) from [Road Accidents]) as 'Total_Fatal_Casualties'
from [Road Accidents]
where  Accident_Severity='Fatal';
--1.7

--Total Serious Casualties
select cast(Sum(Number_of_Casualties) as Decimal(10,2)) *100/
(Select cast(sum(Number_of_Casualties) as Decimal(10,2)) from [Road Accidents]) as 'Total_Serious_Casualties'
from [Road Accidents]
where  Accident_Severity='Serious';
--14.19


--Total casualties Per Month in 2022
select DATENAME(MONTH,accident_date) as Month_Name,sum(number_of_casualties) as Current_year_casualties
from [Road Accidents]
WHERE Year(accident_date)='2022'
group by  DATENAME(MONTH,accident_date)
/* 
February	14804
June	17230
August	16796
April	15767
May	16775
December	13200
January	13163
September	17500
October	18287
July	17201
November	18439
March	16575 */

--Total casualties Per Month in 2021
select DATENAME(MONTH,accident_date) as Month_Name,sum(number_of_casualties) as Current_year_casualties
from [Road Accidents]
WHERE Year(accident_date)='2021'
group by  DATENAME(MONTH,accident_date)
/* 
February	14648
June	18728
August	18797
April	17335
May	18852
December	18576
January	18173
September	18456
October	20109
July	19682
November	20975
March	17815
*/

--Current Year Casualties by Road_type
select road_type,sum(number_of_casualties) as Current_year_road_type from [Road Accidents]
where year(accident_date)='2022'
group by road_type
order by sum(number_of_casualties) desc
/*
Single carriageway	144653
Dual carriageway	31912
Roundabout	12683
One way street	3499
Slip road	2990 */


--Casualties by Road_type in 2021
select road_type,sum(number_of_casualties) as Current_year_road_type from [Road Accidents]
where year(accident_date)='2021'
group by road_type
order by sum(number_of_casualties) desc
/* Single carriageway	165045
Dual carriageway	35456
Roundabout	14145
One way street	3890
Slip road	3610
*/

--Casualties by Urban and Rural Area

select urban_or_rural_area,cast(sum(number_of_casualties) as decimal(10,2))*100 /
(select sum(number_of_casualties) from [Road Accidents] where year(accident_date)='2022') as PCT
from [Road Accidents] 
where YEAR(accident_date)='2022'
group by urban_or_rural_area
order by sum(number_of_casualties) desc
/*
Urban	61.9458763544960
Rural	38.0541236455039
*/

--Total casualties with AREA TYPE
select urban_or_rural_area,sum(number_of_casualties) as Total_Casualties,cast(sum(number_of_casualties) as decimal(10,2))*100 /
(select sum(number_of_casualties) from [Road Accidents] where year(accident_date)='2022') as PCT
from [Road Accidents] 
group by urban_or_rural_area
order by sum(number_of_casualties) desc
/*
Urban	255864	130.7182597056254
Rural	162019	82.7738240598353
*/

--TOP 10 Location BY Number of Casualties
SELECT Top 10 local_authority,sum(number_of_casualties) as Total_Casualties
from [Road Accidents]
group by local_authority
order by Total_Casualties desc

/*
Birmingham	8611
Leeds	5821
Bradford	4431
Manchester	4366
Liverpool	4052
Cornwall	3820
Sheffield	3737
Kirklees	3312
County Durham	3295
Westminster	3169
*/