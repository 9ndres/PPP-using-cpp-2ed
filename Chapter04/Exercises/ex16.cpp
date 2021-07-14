// find mode of a set of input numbers
#include <iostream>
#include <vector>
#include <algorithm>

int main() {
   std::vector<double> nums;

   for (double x; std::cin >> x;) {
      nums.push_back(x);
   }
   std::sort(nums.begin(), nums.end());

   int counter = 0;
   for (int i = 0; i < nums.size(); i++) {
      if (nums[i] == nums[i+1]) {
         counter++;
      }
   }

   std::cout << counter << '\n';
   return 0;
}