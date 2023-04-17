# Connect to a sqlite3 database file called database.db in the same directory as this file
# 

import sqlite3

# add a user to the user table


# delete all users from the user table
def delete_all_users():
    try:
        conn = sqlite3.connect("database.db")

        cur = conn.cursor()

        # delete all users from user table
        cur.execute("DELETE FROM user")

        # truncate the user table
        cur.execute("DELETE FROM sqlite_sequence WHERE name='user'")

        conn.commit()
        conn.close()

    except sqlite3.Error as e:
        print("Database Error: " + str(e))
    except Exception as e:
        print("General Error: " + str(e))
    else:
        print("Connection Successfully Established")
        conn.close()
        print("Connection Closed")

# retrieve all users from the user table
def get_all_users():
    try:
        conn = sqlite3.connect("database.db")

        cur = conn.cursor()
        cur.execute("SELECT * FROM user")
        rows = cur.fetchall()
        conn.close()

        return rows

    except sqlite3.Error as e:
        print("Database Error: " + str(e))
    except Exception as e:
        print("General Error: " + str(e))
    else:
        print("Connection Successfully Established")
        conn.close()
        print("Connection Closed")  

# initialize this script and call the get_all_users function
if __name__ == "__main__":
    print(get_all_users())

