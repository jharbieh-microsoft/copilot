# write a hello world example in python
print("Hello World")

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
