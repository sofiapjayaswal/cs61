CREATE SCHEMA cali_housing_prices;

CREATE TABLE block_location
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    PRIMARY KEY(longitude, latitude)
);

CREATE TABLE financial_info
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    median_income DECIMAL(5,2) NOT NULL, 
    median_household_value INT NOT NULL,
    PRIMARY KEY(longitude, latitude),
    FOREIGN KEY (longitude, latitude) REFERENCES block_location(longitude, latitude)
);

CREATE TABLE block_size
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    population INT NOT NULL,
    households INT NOT NULL,
    PRIMARY KEY(longitude, latitude),
    FOREIGN KEY (longitude, latitude) REFERENCES block_location(longitude, latitude)
);

CREATE TABLE house_size
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    total_rooms INT NOT NULL,
    total_bedrooms INT NOT NULL,
    PRIMARY KEY(longitude, latitude),
    FOREIGN KEY (longitude, latitude) REFERENCES block_location(longitude, latitude)
);

CREATE TABLE house_age
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    housing_median_age INT NOT NULL,
    PRIMARY KEY(longitude, latitude),
    FOREIGN KEY (longitude, latitude) REFERENCES block_location(longitude, latitude)
);

CREATE TABLE ocean_proximity
(
	longitude DECIMAL(5,2) NOT NULL,
    latitude DECIMAL(5,2) NOT NULL,
    ocean_prox VARCHAR(45) NOT NULL, 
    PRIMARY KEY(longitude, latitude),
    FOREIGN KEY (longitude, latitude) REFERENCES block_location(longitude, latitude)
);

