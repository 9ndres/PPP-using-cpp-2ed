// 06/22/2021
// Purpose: Practice the use of loops and the use of std::vector.
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

// convert unit to its equivalent in m.
double unitConverter(double size, std::string unit) {
   constexpr double meters = 100, inches = 2.54, feets = inches * 12;

   if (unit == "cm") {
      size /= meters;
   } else if (unit == "in") {
      size = (size / inches) / meters;
   } else if (unit == "ft") {
      size = (size / feets) / meters;
   } else if (unit == "m") {
      return size;   
   } else {
      return -1;   
   }
   return size;
}

int main() {

   std::string unit;
   std::vector <double> vValues;
   double value = 0;

   while(std::cin >> value >> unit) {
      double validDigit = unitConverter(value, unit);
      if (validDigit > 0) {
         vValues.push_back(validDigit);
      }
   }

   sort(std::begin(vValues), std::end(vValues));

   double sum = 0;
   for (const auto& x : vValues) {
      std::cout << x << " m\n";
      sum += x;
   }

   std::cout << "the sum of the entered values is: " << sum << " m\n";
   return 0;
}
