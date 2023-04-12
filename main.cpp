// open file and write to it hello world
// close file

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {
    string str = "Hello World";
    ofstream myfile("example.txt");
    if (!myfile.is_open()) {
        cerr << "Error opening file" << endl;
        return 1;
    }
    myfile << str << endl;
    myfile.close();
    return 0;
}
