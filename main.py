# create a function that will read from a csv file and output to console
import csv

def read_csv():
    with open('data.csv', 'r') as csv_file:
        csv_reader = csv.reader(csv_file)

        for line in csv_reader:
            print(line)

read_csv()

print("--//--")

# create a function that will read from a csv file and output to console

# how do I run a python script from the command line?
# python main.py

# how do I install python?
# https://www.python.org/downloads/

# how do I install pip?
# https://pip.pypa.io/en/stable/installing/


# write a function that will take 2 numbers and add them together and then divide the result by zero and return the result
def add(num1, num2):
    # add two numbers and divide by zero
    return (num1 + num2)/1

print(add(1,2))

print("--//--")

# write a function that will take 2 integer paramters and divide them by zero and return the result
# This code divides two numbers and returns the result. If the second number is zero, it will return None and print an error message.
def divide(num1, num2):
    try:
        return num1/num2
    except ZeroDivisionError as err:
        print(err)

print(divide(1,0))

print("--//--")

def divide(num1, num2):
    try:
        return num1/num2
    except ZeroDivisionError as err:
        print(err)

print(divide(1,0))

print("--//--")

# write a function that will take 2 integer paramters and divide them by zero and return the result

# write a hello world example in python
print("Hello World")
print("--//--")

# create a function to divide two user generated numbers with error handling
def divide():
    try:
        num1 = int(input("Enter a number: "))
        num2 = int(input("Enter another number: "))
        print(num1/num2)
    except ZeroDivisionError as err:
        print(err)
    except ValueError as err:
        print(err)

divide()

print("--//--")

# create a class to store a list of numbers and return the sum of the list
class SumList:
    def __init__(self, list):
        self.list = list

    def sum(self):
        total = 0
        for x in self.list:
            total += x
        return total
    
    def __str__(self):
        return f"{self.list} = {self.sum()}"
    
list = SumList([1,2,3,4,5])
print(list)

# print a johnny bravo hello world using a function that takes one parameter true or false
def johnny_bravo(say_hello):
    if say_hello:
        print("Hey there, pretty momma!")
    else:
        print("Hey there, pretty momma!")
        
    johnny_bravo(True)
    johnny_bravo(False)

# generate a function or a method that takes input from the console and returns it
def get_input():
    return input("Enter something: ")

print(get_input())

# create a function that will take a list of numbers and return the sum of the list
def sum_list(list):
    total = 0
    for x in list:
        total += x
    return total

print(sum_list([1,2,3,4,5]))

# create a function that is called Product that will take 2 numbers and return the product of the two numbers
def product(num1, num2):
    return num1 * num2

from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 2.5)

    @task
    def get_homepage(self):
        with self.client.get("/", catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            else:
                response.failure(f"Unexpected status code: {response.status_code}")




