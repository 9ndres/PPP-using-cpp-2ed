#include <iostream>
#include <string>
#include <vector>

// implement a square function without using * operator.
int square(int ival) {  
    int squaredNum = 0;
    for (int i = 0; i < ival; i++) {
           squaredNum += ival;
    }
    return squaredNum;
}

int main() {
// square "try this"
   int ival;
   std::cout << "Enter a integer to get its square\n";
   std::cin >> ival;
   std::cout << square(ival) << '\n';
}
