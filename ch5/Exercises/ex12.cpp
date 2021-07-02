// Bulls and cows;
#include <iostream>
#include <vector>
#include <algorithm>

class Ferr {};
void bullsCows(std::vector<int>v1, std::vector<int>v2) {
   int bulls{}, cows{};

   for (size_t i = 0; i < v1.size(); ++i) {
      if (v1[i] == v2[i]) { ++bulls; }
      auto p = std::find(v2.begin(), v2.end(), v1[i]);
      if (p != v2.end()) { ++cows; }
   }

   if (bulls == 4) { // user has the four digits correct
   std::cout << "Bulls: " << bulls << " You Win!!\n";
   } else {
   // Don't add how many bulls were found to cows score;
   std::cout << "Bulls: " << bulls << " Cows: " << (cows - bulls) << '\n';
   }
}

int main() {
   std::vector<int> v1 = {1, 2, 3, 4}; // ToDo: replace v1 elements with pseudo-random numbers.
   std::vector<int> v2;
   try {
       int x = 0; 
       int b = 0;
       for (int i = 0; i < 4; ++i) {
          std::cin >> x;
          if (b == x) { throw Ferr{}; }
          v2.push_back(x);
          b = x;
       }
   }
   catch(...) {
   std::cerr << "_Error_ Wrong sequence format.\n"; 
   return -1;
   }

   bullsCows(v1, v2);
}