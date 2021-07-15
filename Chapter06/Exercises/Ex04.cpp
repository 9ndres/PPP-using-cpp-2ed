#include <iostream>
#include <string>
#include <vector>

class Name_value {
public:
   std::string name;
   int value{};
};

int main() {
   int age;
   std::string name;
   std::vector<Name_value> nameVal;   
   
   while (std::cin >> name >> age && name != "NoName" || age != 0) {
      nameVal.push_back(Name_value{name, age});
   }

   for (int i = 0; i < nameVal.size(); ++i) {
      std::cout << nameVal[i].name << ' ' << nameVal[i].value << '\n';
      // There can not be repeated names
      if (nameVal[i].name == nameVal[i+1].name) { break; }
   }
   return 0;
}