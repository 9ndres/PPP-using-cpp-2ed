#include <iostream>
#include <vector>
#include <algorithm>

int score(std::string searchName, std::vector<std::string> names,
            std::vector<int> ages) {

   // auto result = std::find(names.begin(), names.end(), searchName);
   for (int i = 0; i < names.size(); ++i) {
      if (searchName == names[i]) {
         return ages[i]; // return names score a.k.a ages
      }
   }

   return 0;
}

int main() {
   std::vector<std::string> names;
   std::vector<int> ages;

   int age;
   std::string name;

   while (std::cin >> name >> age && name != "NoName" || age != 0) {
      names.push_back(name);
      ages.push_back(age);
   }

   std::cout << "Enter the score you want to get: " << '\n';
   std::string searchName;
   std::cin >> searchName;
   std::cout << score(searchName, names, ages) << '\n';
   return 0;
}