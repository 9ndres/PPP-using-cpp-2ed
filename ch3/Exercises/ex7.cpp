#include <iostream>
#include <array>
#include <string>
int main()
{
    std::cout << "Insert three names:\n";
    std::array<std::string, 3> names;
    for (int i = 0; i < names.size(); i++){
    std::cin >> names[i];
    }

    for (int i = 0; i < names.size(); i++){
    std::cout << names[i];
    if(i < names.size() - 1){
            std::cout << ',';
        }
    }
}
