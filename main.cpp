// open file and write to it hello world
// close file

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    ofstream myfile;
    myfile.open("example.txt");
    myfile << "Hello World";
    myfile.close();
    return 0;
}
