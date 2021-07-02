#include <array>
#include <algorithm>
#include <iostream>
#include <vector>

bool isADay(std::string dotw) {
   // pre-condition must be in day;
   const std::array<std::string, 7> day {
      "monday", "tuesday", 
      "wednesday", "thursday", 
      "friday", "saturday", 
      "sunday"
      };
   // ToDo: convert dotw to lowercase and compare with std::string::npos;
   auto p = std::find(day.begin(), day.end(), dotw);
   if (p != day.end()) { return true; }
   return false;
}

int main() {
   std::vector<int> score;
   std::string dotw; int x{};
   for (int i = 0; i < 7; i++) {
     std::cin >> dotw >> x;
     if (isADay(dotw)) { score.push_back(x); }
     else { std::cout << "Not a day I know\n"; }
    }

   int sum = 0;
   for (const auto& i : score) { sum += i; }
   std::cout << sum << '\n';
   return 0;
}