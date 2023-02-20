-- Here are the answers to Jane questions

 -- Top 5 Arrival Location Ranking

SELECT arrival_location, 
	   COUNT(*) AS num_of_arrival
FROM trips
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


-- Driver's full names, their NIN’s and the number of trips they’ve handled.

SELECT DISTINCT t.driver_id,
	     d.first_name||" "||d.last_name AS full_name,
	     d.national_identity_number AS NIN,
	     COUNT(t.driver_id) AS num_of_drivers_trip,
		 d.gender
FROM drivers AS d
INNER JOIN trips AS t
ON t.driver_id = d.id
GROUP BY 1
ORDER BY 4 DESC
LIMIT 10;


-- Top 10 performing drivers

SELECT DISTINCT t.driver_id,
				d.first_name||" "||d.last_name AS full_name,
				d.national_identity_number AS NIN, 
	   COUNT(t.driver_id) AS num_of_drivers_trip
FROM drivers AS d
INNER JOIN trips AS t
ON d.id = t.driver_id
GROUP BY 1
ORDER BY 4 DESC
LIMIT 10; 


-- Top 10 passengers based on number of trips

SELECT  DISTINCT pt.passenger_id,
		p.first_name||" "||p.last_name AS full_name,
		p.email_address,
		COUNT(pt.trip_id) AS num_of_trips
FROM passengers AS p
INNER JOIN passenger_trips AS pt
ON p.id = pt.passenger_id
GROUP BY 1
ORDER BY 4 DESC
LIMIT 10; 



-- Drivers and the vechiles paired to them

SELECT  d.first_name||" "||d.last_name AS full_name,
		v.model,
		v.plate_number
FROM driver_vehicle_logs AS dv
INNER JOIN vehicles AS v
ON v.id = dv.vehicle_id
INNER JOIN drivers AS d 
ON d.id = dv.driver_id;



-- Highest Issued Date

SELECT DISTINCT issue_date, COUNT(*) AS num_issue_date
FROM passenger_cards
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5; 


-- Gender count of drivers

SELECT DISTINCT gender, COUNT(*) AS num
FROM drivers
GROUP BY 1

-- Details of Female drivers

SELECT *
FROM drivers
WHERE gender = 'F'


-- Number of trips completed by Female Drivers

SELECT d.id, d.first_name||" "||d.last_name AS full_name, COUNT(t.driver_id) AS num_of_trips
FROM drivers AS d
INNER JOIN trips AS t
ON d.id = t.driver_id
GROUP BY 1
HAVING gender = 'F'
