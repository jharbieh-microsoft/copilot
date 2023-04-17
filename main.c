// create a hello world example

#include <stdio.h>

int main()
{
    printf("Hello World");
    int a = 5;
    int b = 6;
    int c = a + b;
    return 0;
}

//  create a function that returns a collection of people first names
#include <stdio.h>

int main()
{
    char *names[] = {"John", "Paul", "George", "Ringo"};
    for (int i = 0; i < 4; i++)
    {
        printf("%s", names[i]);
    }
    return 0;
}

// Path: main.c