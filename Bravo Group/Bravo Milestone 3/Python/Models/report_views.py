import mysql.connector
from datetime import date

# Returns the current local date

def display_report_countries(host, user, password, database, sql_query):
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    cursor = db.cursor()

    cursor.execute(sql_query)
    all_rows = cursor.fetchall()

    # Get the column names
    column_names = [i[0] for i in cursor.description]
    print("\n")
    today = date.today()
    print("Date of Report: ", today)
    print("\n\t\tCountries Report: \n");

    # Calculate the maximum length of each column
    max_lengths = [len(name) for name in column_names]
    for row in all_rows:
        for i, value in enumerate(row):
            max_lengths[i] = max(max_lengths[i], len(str(value)))

    # Print the column headers
    for i, name in enumerate(column_names):
        print(f'{name.ljust(max_lengths[i])}', end=' | ')
    print()

    # Print the separator line
    print('-' * (sum(max_lengths) + len(max_lengths) * 3 - 1))

    # Print the rows
    for row in all_rows:
        for i, value in enumerate(row):
            print(f'{str(value).ljust(max_lengths[i])}', end=' | ')
        print()
    print ("\n******* END OF REPORT *****")
    cursor.close()
    db.close()

# Usage example
display_report_countries(
    host="127.0.0.1",
    user="OutlandAdventures_user",
    password="Explore",
    database="outlandadventures",
    sql_query='SELECT t.trip_name AS Trip, d.destination_name AS Location, d.destination_country AS Country, COUNT(r.registration_id) AS Registrations, YEAR(t.end_date) AS Year FROM trip t JOIN destination d ON t.destination_id = d.destination_id LEFT JOIN registration r ON t.trip_id = r.trip_id GROUP BY Trip, Location, Country, Year;'
)

def display_report_sales(host, user, password, database, sql_query):
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    cursor = db.cursor()

    cursor.execute(sql_query)
    all_rows = cursor.fetchall()

    # Get the column names
    column_names = [i[0] for i in cursor.description]
    print("\n")

    # Calculate the maximum length of each column
    max_lengths = [len(name) for name in column_names]
    for row in all_rows:
        for i, value in enumerate(row):
            max_lengths[i] = max(max_lengths[i], len(str(value)))

    today = date.today()
    print("Date of Report: ", today)
    print("\n\t\tSales Report:  \n");
    # Print the column headers
    for i, name in enumerate(column_names):
        print(f'{name.ljust(max_lengths[i])}', end=' | ')
    print()

    # Print the separator line
    print('-' * (sum(max_lengths) + len(max_lengths) * 3 - 1))

    # Print the rows
    for row in all_rows:
        for i, value in enumerate(row):
            print(f'{str(value).ljust(max_lengths[i])}', end=' | ')
        print()

    print("\n******* END OF REPORT *****")
    cursor.close()
    db.close()

# Usage example
display_report_sales(
    host="127.0.0.1",
    user="OutlandAdventures_user",
    password="Explore",
    database="outlandadventures",
    sql_query='Select product_name AS Product, product_price AS Price, product_sales AS "Sales Revenue" FROM Product;'

)

def display_equipment_age_report(host, user, password, database, sql_query):
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    cursor = db.cursor()

    cursor.execute(sql_query)

    all_rows = cursor.fetchall()

    # Get the column names
    column_names = [i[0] for i in cursor.description]
    print("\n")
    today = date.today()
    print("Date of Report: ", today)
    print("\n\t\tEquipment Age Report:  \n");

    # Calculate the maximum length of each column
    max_lengths = [len(name) for name in column_names]
    for row in all_rows:
        for i, value in enumerate(row):
            max_lengths[i] = max(max_lengths[i], len(str(value)))

    # Print the column headers
    for i, name in enumerate(column_names):
        print(f'{name.ljust(max_lengths[i])}', end=' | ')
    print()

    # Print the separator line
    print('-' * (sum(max_lengths) + len(max_lengths) * 3 - 1))

    # Print the rows
    for row in all_rows:
        for i, value in enumerate(row):
            print(f'{str(value).ljust(max_lengths[i])}', end=' | ')
        print()

    print("\n******* END OF REPORT *****")
    cursor.close()
    db.close()

# Usage example
display_equipment_age_report(
    host="127.0.0.1",
    user="OutlandAdventures_user",
    password="Explore",
    database="outlandadventures",
    sql_query=f'SELECT equipment_name AS Equipment, equipment_ordered_date AS "Ordered Date", equipment_received_date AS "Received Date", DATEDIFF(CURDATE(), equipment_received_date) AS "Age in days", IF(DATEDIFF(CURDATE(), equipment_received_date) > 1825, "*", "") AS "5 Yrs Old or Older" FROM equipment ORDER BY `Age in days` DESC;'
)
