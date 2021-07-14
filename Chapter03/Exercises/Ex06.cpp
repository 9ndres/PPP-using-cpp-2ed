// Purpose: Displays a formatted set of three int's 
#include <iostream>
#include <array>

int main() {
    std::cout << "Enter three digits: a b c\n";
    std::array<int, 3> digits;

    for (int i = 0; i < digits.size(); ++i) {
        std::cin >> digits[i];
    }

    for (const auto& x : digits) {
        std::cout << x << ' ';
    }

    std::cout << '\n';
    return 0;
}
