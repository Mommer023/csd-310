Use OutlandAdventures;
#Customer Table Data:
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Inez","Zeigler","inez.zeigler@yahoo.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Essie","Swaim","eSwaim@aol.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Joshua","Willis","Willisj203@yahoo.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Katherine","Williams","Kat.williams@icloud.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Patrick","Yund","patrick_yund7@gmail.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Stanley","Zimmerman","Stan-z-man@outlook.com");


#Employee Table Data:
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Blythe", "Timmerson", NULL, "Owner" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Jim", "Ford", NULL, "Owner");
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("John", "MacNell", "Mac", "Guide" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("D.B.", "Marland", "Duke", "Guide" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Anita", "Gallegos", NULL, "Marketing" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Dimitrios", "Stravopolous", NULL, "Administative" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Mei", "Wong", NULL, "Web Developer" );



#Destination Table Data:
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Spituk Gompa","An Iconic Hilltop Monastery");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Dubai Desert Safari","Exciting Desert Adventures");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Nandi Hills","An ancient hill fortress scattered with monuments and shrines.");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Grand Canyon","The Grand Canyon of the Colorado River ");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Iceland Blue Lagoon","The world''s largest geothermal pool");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Cinque Terre","Hike along the cliffside trail through 5 coastal villages.");

#Equipment Table Data:
INSERT INTO Equipment(equipment_name, equipment_quantity)
    VALUES("Tent", 03);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Lantern", 13);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Camp Stove", 6);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Flashlight", 35);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Cooler", 20);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("First Aid Kit", 16);

#Marketing Table Data:
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Social Media", 500, "FBPROMOHIKE23");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Email", 3000, "READY2HIKE");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Website", 8000, "Welcome2023");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Paid Advertising", 1000, "ExploreNow23");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Customer Referral Program", 500, "2023Friends");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Partnerships", 1500, "JOINUS2023");


#Product Table Data:
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Outdoor Hiking Backpack", 45.00, 12);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Trekking Poles", 39.99, 10);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Tent", 248.39, 15);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Camping Survival Kit", 45.87, 23);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Cooler", 179.99, 10);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Hammock", 39.99, 23);



#Registration Table Data:
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(1, ('2022-08-23'), 2);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(3,('2022-03-19'), 1);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(2,('2021-01-10'), 4);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(5,('2023-04-27'), 3);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(4, ('2023-10-10'), 6);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(6,('2023-01-14'), 5);




#Trip Table Data:
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




Show tables
