# how do I install sqlite3 in python 3.7.3 on windows 10?
# https://stackoverflow.com/questions/58530503/how-do-i-install-sqlite3-in-python-3-7-3-on-windows-10
# https://www.sqlite.org/download.html



# create a database connection to a SQLite database file named "database.db" in the same directory as this file
import sqlite3

# define a function named database_init that will create the tables in the database
def database_init():
    try:
        conn = sqlite3.connect("database.db")

        # create table client
        conn.execute("CREATE TABLE IF NOT EXISTS client (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, account TEXT)")

        # create a user table with the following columns: id, name, email
        conn.execute("CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT)")

        # create a work table with the following columns: id, name, description
        conn.execute("CREATE TABLE IF NOT EXISTS work (id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT)")

        # create a user_work table with the following columns: id, user_id, work_id
        conn.execute("CREATE TABLE IF NOT EXISTS user_work (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER REFERENCES user(id), work_id INTEGER REFERENCES work(id))")    
        
        # create client_work table with the following columns: id, client_id, work_id
        conn.execute("CREATE TABLE IF NOT EXISTS client_work (id INTEGER PRIMARY KEY AUTOINCREMENT, client_id INTEGER REFERENCES client(id), work_id INTEGER REFERENCES work(id))")
        
        # commit the changes to the database
        conn.commit()

        # close the database connection
        conn.close()
    except sqlite3.Error as e:
        print(e)

# create a function that lists all database objects in the database.db sqlite3 database
def list_database_objects():
    try:
        conn = sqlite3.connect("database.db")

        cur = conn.cursor()

        # list all database objects in the database.db sqlite3 database
        cur.execute("SELECT * FROM sqlite_master")

        rows = cur.fetchall()        

        conn.close()

        return rows
    
    except sqlite3.Error as e:
        print(e)

# Initialize this file and call the database_init function
if __name__ == "__main__":
    database_init()
    print("Database initialized")
    list_database_objects()
    print("List all objects completed")

# Path: db\database.py


