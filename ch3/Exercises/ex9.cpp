#include <iostream>
#include <array>
#include <string>

int main(){

    std::array<std::string, 5> numWords {"zero", "one", "two", "three", "four"};

    int ival;

    if(std::cin >> ival && ival < 5){
    std::cout << numWords[ival] << "\n";
    }
    else {
    std::cout << "not a number I know\n";
    }
    return 0;
}
