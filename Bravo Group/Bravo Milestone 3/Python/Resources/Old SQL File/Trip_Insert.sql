Use OutlandAdventures;
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Onward Climb Guide", ('2023-01-01'), ('2023-01-16'),"Hiking", 3, 3);

INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Bucketlist Campers Guide", ('2021-03-23'),('2021-04-02'), "Camping", 2 ,3);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Tent & Trails Guide",('2022-06-12'), ('2022-06-12'),"Camping",1,4);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Outdoor Odyssey Guide",('2024-04-07'),('2022-04-15'),"Hiking",4,3);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("TrekTopia Tour Guide",('2023-12-01'),('2023-12-07'),"Hiking",6,4);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Camp The Woods",('2024-06-17'),('2024-06-29'),"Camping",5 ,4);


SELECT * FROM Trip;

Show tables