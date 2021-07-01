// This snippet covers from ex2 up to ex6
#include <iostream>

double ctok(double c) { // converts Celsius to Kelvin
   return (c < -273.15) ? 0 : c + 273.15;
}

double ktoc(double k) {
   return (k < 0 ) ? 0 : k - 273.15;
}

int main() {
   double c = 0, k = 0;
   std::cin >> c >> k;
   std::cout << ctok(c) << '\n'
             << ktoc(k) << '\n';
}
