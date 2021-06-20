#include <iostream>
using std::cout;

int main(){
    cout << "Enter an integer value\n";
    int ival;
    std::cin >> ival;
    ival % 2 ? 
    cout << "The number " << ival << " is odd\n" : cout << "The number " << ival << " is even\n";

    return 0;
}
