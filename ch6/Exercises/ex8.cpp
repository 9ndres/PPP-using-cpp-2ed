// 07/13/2021
// Purpose: Implements the game "Bulls and cows"
// from ch5 ex12, using letters instead of digits
#include <iostream>
#include <vector>
#include <algorithm> // std::find

class Ferr {};
void BullsCows(std::vector<std::string>v1, std::vector<std::string>v2) {
   int bulls{}, cows{};

   for (size_t i = 0; i < v1.size(); ++i) {
      if (v1[i] == v2[i]) { ++bulls; }
      auto p = std::find(v2.begin(), v2.end(), v1[i]);
      if (p != v2.end()) { ++cows; }
   }

   if (bulls == 4) { // user has the four digits correct
   std::cout << "Bulls: " << bulls << " You Win!!\n";
   }
   else {
   // Don't add how many bulls were found to cows score;
   std::cout << "Bulls: " << bulls << " Cows: " << (cows - bulls) << '\n';
   }
}

int main() {
   std::vector<std::string> v1 = { "foui", "bazi", "baro", "xyzu" }; 
   std::vector<std::string> v2;
   try {
       std::string x;
       for (const auto& e : v1) {
          std::cin >> x;
          v2.push_back(x);
       }

      // There can't be repeated string
   }
   catch(...) {
      std::cerr << "_Error_ Wrong sequence format.\n"; 
      return -1;
   }

   BullsCows(v1, v2);
}