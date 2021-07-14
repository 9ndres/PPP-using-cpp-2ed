#include <iostream>

int main() {
    std::cout << "Enter an integer digit\n";
    int ival;
    std::cin >> ival;

    (ival % 2) // if ival mod 2 is nonzero.
     ? std::cout << "The number " << ival << " is odd\n" 
     : std::cout << "The number " << ival << " is even\n";

    return 0;
}
