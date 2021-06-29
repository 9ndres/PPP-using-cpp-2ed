#include <iostream>
#include <vector>
#include <algorithm>

int main() {
   std::vector<std::string> names;
   std::vector<int> ages;

   int age;
   std::string name;

   while (std::cin >> name >> age && name != "NoName" || age != 0) {
      names.push_back(name);
      ages.push_back(age);
   }
   for (int i = 0; i < names.size(); ++i) {
      std::cout << names[i] << ' ' << ages[i] << '\n';
   }
   return 0;
}