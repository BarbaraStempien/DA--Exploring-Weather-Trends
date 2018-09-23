-- Commands used to download the CSV files

-- Rename columns

ALTER TABLE global_data RENAME COLUMN avg_temp to global_avg_temp;

ALTER TABLE city_data RENAME COLUMN avg_temp to city_avg_temp;

-- Get Stocokholm's data

SELECT global_data.year, global_avg_temp, city_avg_temp
FROM global_data INNER JOIN city_data
ON global_data.year = city_data.year
WHERE city LIKE 'Stockholm';