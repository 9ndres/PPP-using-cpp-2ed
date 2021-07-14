// celsius to fahrenheit and vice versa.
#include <iostream>

double ftoc(double f) {
   return f - 32.0 / 1.8;
}

double ctof(double c) {
   return 9.0 / 5.0 * c + 32;
}

int main() {
   double f{}, c{};
   std::cin >> f >> c;
   std::cout << ftoc(f) << ' ' << ctof(c) << '\n';
}