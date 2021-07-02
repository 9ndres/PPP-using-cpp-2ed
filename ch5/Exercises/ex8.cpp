// This snippet covers from ex8 up to ex10
#include <iostream>
#include <vector>
#include <string>

class Werr { // Warn about simple errors.
public:
   Werr(std::string w) :werr{w} {}
   std::string what() {
      return werr;
   }
private:
   std::string werr;
};

double sumOfN (std::vector<double> nums, int n) {
   if (n > nums.size()) {
      throw Werr{"Denied access_ Out of bounds."};
      }
   double sum = 0;
   for (size_t i = 0; i < n; ++i) {
      sum += nums[i];
   }

   return sum;
}

auto nDifference(std::vector<double>nums) {
   // get the difference between two adjacent numbers.
   std::vector<double> differences;
   for (size_t i = 0; i < nums.size() - 1; ++i) { // don't push the last number
      differences.push_back((nums[i] - nums[i+1]));
   }
   return differences;
}

int main() {
   double n{};
   std::cin >> n;

   std::vector<double> nums;
   for (double x; std::cin >> x;) { nums.push_back(x); }

   try {
   std::cout << sumOfN(nums, n) << '\n';
   }
   catch(Werr& e) {
      std::cerr << "__Warning__" << e.what() << '\n';
      return -1;
   }
   
   for (const auto& i : nDifference(nums)) { std::cout << i << '\n'; }
   return 0;
}