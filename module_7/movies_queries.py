# Taylor Mommer
# Module 7.2: Table Queries
# November 25, 2023
#

from errno import errorcode

import mysql.connector

config = {
    "user": "movies_user",
    "password": "popcorn",
    "host":"127.0.0.1",
    "database": "movies",
    "raise_on_warnings" : True }

try:
    db = mysql.connector.connect(**config)
    print("\n Database user {} connected to MySQL on host {} with database {}".format(config["user"],config["host"],
                                                                                   config["database"]))
    #input("\n\n Press Any key to continue")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("  The supplied u")

print("\n-- Taylor Mommer - 7.2 --")
#Studio records display
cursor = db.cursor()
cursor.execute("SELECT studio_id, studio_name FROM studio")
studios = cursor.fetchall()
print("-- DISPLAYING Studio RECORDS --")
for studio in studios:
    print("Studio ID: {}\nStudio Name: {}\n".format(studio[0], studio[1]))


#Genre Records Display
cursor = db.cursor()
cursor.execute("SELECT genre_id, genre_name FROM genre")
genres = cursor.fetchall()
print("\n-- DISPLAYING Genre RECORDS --")
for genre in genres:
    print("Genre ID: {}\nGenre Name: {}\n".format(genre[0], genre[1]))


#Short Films Record Display
cursor = db.cursor()
cursor.execute("SELECT film_name, film_runtime FROM film WHERE film_runtime <= 120")
short_films = cursor.fetchall()
print("\n-- DISPLAYING Short Film RECORDS --")
for short_film in short_films:
    print("Film Name: {}\nRuntime: {}\n".format(short_film[0], short_film[1]))

#Director Record Diplay
cursor = db.cursor()
cursor.execute("SELECT film_name, film_director FROM film ORDER BY film_director")
directors = cursor.fetchall()
print("\n-- DISPLAYING Director RECORDS in Order --")
for director in directors:
    print("Film Name: {}\nDirector: {}\n".format(director[0], director[1]))
