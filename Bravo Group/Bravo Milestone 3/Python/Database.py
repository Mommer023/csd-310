import mysql.connector
import mysql.connector.errors
from Models.TableEnum import Tables
from mysql.connector import errorcode


class Database:
    db = None
    cursor = None

    config = {
        "user": "OutlandAdventures_user",
        "password": "Explore",
        "host": "127.0.0.1",
        "database": "outlandadventures",
        "raise_on_warnings": True
    }

    # Constructor, runs on initialization
    def __init__(self) -> None:
        # Try to connect to the database, else display an error message
        try:
            self.db = mysql.connector.connect(**self.config)
        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("The supplied username or password are invalid")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("The specified database does not exist")
            else:
                print(err)

            raise Exception("An error occured while connecting to the database")

        self.cursor = self.db.cursor()

    # Read and execute each statement in the DatabaseSchema
    def BuildDatabase(self):
        reader = open("Resources/DatabaseSchema.sql", "r")
        sqlStatements = reader.read().split(';')

        for statement in sqlStatements:
            try:
                self.cursor.execute(statement)
                self.cursor.reset()
            except Exception as err:
                print(type(err))
                print(err)

    # Select All records from the provided table.
    def SelectAll(self, tables):
        self.cursor.execute("SELECT * FROM " + tables.value)
        output = self.cursor.fetchall()

        return output

    def getColumnNames(self, tables):
        self.cursor.execute(f'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = "{tables.value}" AND TABLE_SCHEMA = "outlandadventures" ORDER BY ORDINAL_POSITION')
        output = self.cursor.fetchall()
        output = [column[0] for column in output]
        return output
    
    # Close the connection

    def Close(self):
        self.db.close()
