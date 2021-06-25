#include <iostream>

int main() {
    int choWeapon;
    std::cout << "Choose your weapon:\nRock(1), Paper(2), Scissors(3)\n";
    std::cin >> choWeapon;
   // machine always choose rock;
    switch(choWeapon) {
        case 1: 
        std::cout << "Draw\n"; 
        break;
        case 2:
        std::cout << "You win\n";
        break;
        case 3:
        std::cout << "Machine wins\n";
    }
return 0;
}
