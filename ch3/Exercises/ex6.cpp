#include <iostream>
#include <array>
int main(){
    std::cout << "enter three digits: a b c\n";
    std::array<int, 3> digits;

    for(int i = 0; i < digits.size(); ++i){
    std::cin >> digits[i];
    }
    for(int i = 0; i < digits.size(); i++){
    std::cout << digits[i];
    if (i < digits.size() - 1) std::cout << ", ";    
    }

    std::cout << '\n';
    return 0;
}
