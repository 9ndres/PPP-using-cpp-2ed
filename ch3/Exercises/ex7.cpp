// Purpose: Displays a set of three formatted names.
#include <iostream>
#include <array>
#include <string>

int main() {
    std::cout << "Insert three names:\n";
    std::array<std::string, 3> names;

    for (int i = 0; i < names.size(); i++) {
        std::cin >> names[i];
    }

    for (const auto& x : names) {
        std::cout << x << ' ';
    }
}
