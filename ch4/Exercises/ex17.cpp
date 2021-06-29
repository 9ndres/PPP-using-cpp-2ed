// find max, min and mode from string.
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

int findMode(std::vector<std::string> stngs) {
      int counter = 0;
      for (int i = 0; i < stngs.size(); i++) {
         // todo: find mode.
         }
      }
      return counter;
}

int main() {
   std::vector<std::string> stngs;
   for (std::string st; std::cin >> st;) {
      stngs.push_back(st);
   }
   std::sort(stngs.begin(), stngs.end());
   std::cout <<  findMode(stngs) << " is the mode\n";
   std::cout << "the min is: " << stngs[0] << '\n'
             << "the max is: " << stngs[stngs.size()-1] << '\n';

   return 0;
}