#include <iostream>
#include <vector>
#include <algorithm>

std::string score(int searchNum, std::vector<std::string> names,
            std::vector<int> ages) {

   // auto result = std::find(names.begin(), names.end(), searchName);
   for (int i = 0; i < ages.size(); ++i) {
      if (searchNum == ages[i]) {
         return names[i]; // return name
      }
   }

   return "score not found\n";
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

   std::cout << "Enter the score of the name you want to get: " << '\n';
   int searchNum;
   std::cin >> searchNum;
   std::cout << score(searchNum, names, ages) << '\n';
   return 0;
}