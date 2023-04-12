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


