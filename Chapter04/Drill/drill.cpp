// 06/22/2021
// Revisit: 07/12/2021
// Purpose: Converts between units.
// Input: A digit plus an unit, finish with illegal input.
// Output: An accumulator, largest value, smallest value.

#include <iostream>
#include <vector>
#include <string>
#include <algorithm> // std::sort
#include <numeric> // std::accumulate

double unitConverter(double& size, const std::string& unit) {
   constexpr double meters = 100, inches = 2.54, feets = inches * 12;
   if (unit == "cm") { size /= meters; }
   else if (unit == "in") { size = (size / inches) / meters; }
   else if (unit == "ft") {  size = (size / feets) / meters; }
   return size;
}

int main() {
   std::vector <double> vValues;
   std::string unit;

   for (double value; std::cin >> value >> unit;) {
       vValues.push_back(unitConverter(value, unit));
   }

   // Print sorted vValues
   std::sort(vValues.begin(), vValues.end());
   for (const auto& x : vValues) {
      std::cout << x << " m\n";
   }

   double sum = std::accumulate(vValues.begin(), vValues.end(), 0);
   std::cout << "The sum of the entered values is: " << sum << " m\n"
             << "The smallest value is " << vValues[0] << "m\n"
             << "And the largest value is " << vValues[vValues.size()-1] << "m\n";
   return 0;
}