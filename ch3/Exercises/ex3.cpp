#include <iostream>

int main(){
    std::cout << "Enter a distance in miles to get the equivalent in kilometers\n";
    int miles;
    std::cin >> miles;
    std::cout << miles * 1.6 <<'\n';

    return 0;
}
