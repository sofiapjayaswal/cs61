-- configure settings to allow access to local files on computer --
SET GLOBAL local_infile = 1;

-- add data to block_location --
LOAD DATA LOCAL INFILE '/Users/sofiajayaswal/dev/Cs61_final_proj/block_location_csv.csv'
INTO TABLE block_location
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude);

-- add data to block_size --
LOAD DATA LOCAL INFILE '/Users/sofiajayaswal/dev/Cs61_final_proj/block_size.csv'
INTO TABLE block_size
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude, population, households);

-- add data to financial_info --
LOAD DATA LOCAL infile '/Users/sofiajayaswal/dev/Cs61_final_proj/financial_info.csv'
INTO TABLE financial_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude, median_income, median_household_value);

-- add data to house_age --
LOAD DATA LOCAL infile '/Users/sofiajayaswal/dev/Cs61_final_proj/house_age.csv'
INTO TABLE house_age
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude, housing_median_age);

-- add data to house_size --
LOAD DATA LOCAL infile '/Users/sofiajayaswal/dev/Cs61_final_proj/house_size.csv'
INTO TABLE house_size
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude, total_rooms, total_bedrooms);

-- add data to ocean_proximity --
LOAD DATA LOCAL infile '/Users/sofiajayaswal/dev/Cs61_final_proj/ocean_proximity.csv'
INTO TABLE ocean_proximity
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(latitude, longitude, ocean_prox);