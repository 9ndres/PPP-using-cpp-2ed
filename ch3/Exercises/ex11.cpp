#include <iostream>
#include <string>
#include <array>
// This solution could been easier if std::map were used.

int main()
{
    
    std::array<std::string, 5> coinNames { "pennie", "nickel", "dime", "quarter", "half dollar" };
    std::array<int, coinNames.size()> values;
    
    for(int i = 0; i < coinNames.size(); i++){
        std::cout << "How many " << coinNames[i] + "s"<< " do you have?\n";
        std::cin >> values[i];
    }

    for (int i = 0; i < coinNames.size(); i++){
        std::cout << "You have $" << values[i] << ' ';

        if (values[i] == 1)
        {
            std::cout << coinNames[i] <<'\n';
        } 
        else 
        {
            std::cout << coinNames[i] + "s" << '\n';
        }
    }
    
    return 0;
}
