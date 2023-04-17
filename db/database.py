# create a database connection to a SQLite database file named "database.db" in the same directory as this file
import sqlite3

# define a function named database_init

def database_init():
    try:
        conn = sqlite3.connect("database.db")

        # create a user table with the following columns: id, name, age, email
        conn.execute("CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, email TEXT)")

        # create a work table with the following columns: id, name, description
        conn.execute("CREATE TABLE IF NOT EXISTS work (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, description TEXT)")

        # create a user_work table with the following columns: id, user_id, work_id
        conn.execute("CREATE TABLE IF NOT EXISTS user_work (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, work_id INTEGER)")    

        # commit the changes to the database
        conn.commit()

        # close the database connection
        conn.close()
    except sqlite3.Error as e:
        print(e)

# Initialize this file and call the database_init function
if __name__ == "__main__":
    database_init()
    print("Database Initialized")

# Path: db\database.py


