# create a function that reads from a sql database table and then writes to a csv file

import sqlite3
import csv

def read_from_db():
    conn = sqlite3.connect("lite.db")
    cur = conn.cursor()
    cur.execute("SELECT * FROM store")
    data = cur.fetchall()
    conn.close()
    return data

def write_to_csv(data):
    with open("lite.csv", "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["id", "item", "quantity"])
        writer.writerows(data)

write_to_csv(read_from_db())
