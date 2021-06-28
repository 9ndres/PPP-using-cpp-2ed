#include <iostream>
#include <cmath>

// calculate the quadractic formula x^2 + bx + c = 0
std::pair<double, double> quadFormula(double a, double b, double c ) {
   double x1 = (-b + std::sqrt(std::pow(2, b) - 4 * a * c)) / 2 * a; // +x
   double x2 = (-b - std::sqrt(std::pow(2, b) - 4 * a * c)) / 2 * a; // -x
   std::pair<double, double> xs;
   xs.first = x1;
   xs.second = x2;
   return xs;
}

int main() {
   std::pair<double, double> result = quadFormula(1, 4, -21);
   std::cout << result.first << " or " << result.second << '\n';
   return 0;
}