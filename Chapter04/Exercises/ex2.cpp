#include <iostream>
#include <vector>
#include <algorithm>

int main() {
   std::vector<double> temps;
   for (double temperature; std::cin >> temperature;) {
      temps.push_back(temperature);
   }

   std::sort(std::begin(temps), std::end(temps));

   const double center = temps[temps.size() / 2];
   const double  adjacent = temps[(temps.size() / 2) - 1];

   if (temps.size() % 2) { // If temps is odd the median is in the middle
      std::cout << "The median equals: " << center << '\n';
   }
   else {   // else apply the formula
      double median = (center + adjacent) / 2;
      std::cout << "The median equals: " << median << '\n';
   }

   return 0;
}
