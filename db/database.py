# create a database connection to a SQLite database file named "database.db" in the same directory as this file
import sqlite3

# define a function named database_init

def database_init():
    try:
        conn = sqlite3.connect("database.db")

        # create a user table with the following columns: id, name, age, email
        conn.execute("CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, email TEXT)")

        # insert three new users into the user table
        conn.execute("INSERT INTO user (name, age, email) VALUES ('John', 25, 'john@email.me')")
        conn.execute("INSERT INTO user (name, age, email) VALUES ('Jane', 30, 'jane@email.her')")
        conn.execute("INSERT INTO user (name, age, email) VALUES ('Jack', 35, 'jack@email.him')")

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


