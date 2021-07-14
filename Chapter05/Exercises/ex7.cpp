// 07/12/2021
// Purpose: Implements the quadratic equation formula.
//  (-b±√(b²-4ac))/(2a)
#include <iostream>
#include <cmath> // std::pow, std::sqrt
#include <utility> // std::pair

auto Quadf(const double& a, const double& b, const double& c) {
   using std::sqrt;
   using std::pow;
   double positiveX = ((-b) + sqrt((pow(2, b) - 4 * a * c))) / (2 * a);
   double negativeX = ((-b) - sqrt((pow(2, b) - 4 * a * c))) / (2 * a);
   return std::pair<double, double> {positiveX, negativeX};
}

int main() {
   auto ans = Quadf( 1, 4, -21); 
   std::cout << ans.first << ' ' << ans.second << '\n';
}