// This file just me playing around obviously is just an overkill of a simple task and 
// should not be considered a good practice.

#include <iostream>
#include <algorithm>
template<typename T> void Calc( T val1, T val2)
{
    std::pair<T, T> minMax = std::minmax(val1, val2);
    if(val1 != val2){
        std::cout << "the larger number is: "  << minMax.second
                  << "\nand the smaller number is: " << minMax.first;
      } 
     else {
        std::cout << "the numbers are equal.";
      }
        std::cout  << "\nthe sum of both is: " << val1 + val2
                   << "\nthe difference is: " << val1 - val2
                   << "\nthe product is: " << val1 * val2 << '\n';
}
int main(){
    std::cout << "Enter two ints(followed by enter)\n";
    int val1, val2;
    std::cin >> val1 >> val2;
    Calc(val1, val2);

    std::cout << "Enter two floating points(followed by enter)\n";
    double dval, dval2;
    std::cin >> dval >> val2;
    Calc(dval, dval2);
    return 0;
}
