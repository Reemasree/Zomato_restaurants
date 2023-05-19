USE zomato;  -- Working on zomato database
 
-- Creating a new table in zomato to store country codes and their names.
CREATE TABLE country_codes(
  country_code INT PRIMARY KEY,
  country_name VARCHAR(50)
);

-- Creating a new table restaurant_details to store each restaurant's information.
CREATE TABLE restaurant_details (
  restaurant_id INT PRIMARY KEY,
  restaurant_name VARCHAR(100),
  country_code VARCHAR(2),
  city VARCHAR(200),
  address VARCHAR(200),
  locality VARCHAR(64),
  locality_verbose VARCHAR(64),
  longitude double,
  latitude double,
  cuisines VARCHAR(200),
  average_cost_for_two INT,
  currency VARCHAR(200),
  price_range INT
);

-- Creating a new table ratings to store the restaurant ratings and votes
CREATE TABLE ratings (
  restaurant_id INT PRIMARY KEY,
  aggregate_rating double,
  rating_color VARCHAR(50),
  rating_text VARCHAR(50),
  votes INT
);

-- Creating a new table features to store the delivery and booking features of restaurants.
CREATE TABLE features (
  restaurant_id INT PRIMARY KEY,
  has_table_booking VARCHAR(50),
  has_online_delivery VARCHAR(50),
  is_delivering_now VARCHAR(50),
  switch_to_order_menu VARCHAR(50)
);

-- Displaying the data from each table in zomato database

SELECT * from restaurant_details;
SELECT * from country_codes;
SELECT * FROM features;
SELECT * FROM ratings;
