// -std=c++17
#include <iostream>
#include <string>
#include <map>

int main() {
    std::map<std::string, int> coins  {
        { "Pennies", 0 },
        { "Nickels", 0 },
        { "Dimes", 0 },
        { "Quarters", 0 },
        { "Half dollars", 0}
     };

    for (const auto& [key, value] : coins) {
        int x{};
        std::cin >> x;
        coins[key] = x;
    }  

    for (const auto& [key, value] : coins) {
        std::cout << key << ' ' << value << '\n';
    }
    return 0;
}
