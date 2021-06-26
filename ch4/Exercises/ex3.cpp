// 06/23/2021
// Even though this exercise could've been done with std::array 
// exercise instructions specify the use of std::vector

#include <iostream>
#include <vector>
#include <algorithm>

int main() {
   std::vector<double> routes;
   double city;

   for (int i = 0; i < 2; ++i) {
      std::cin >> city;
      routes.push_back(city);
   }
   
   std::cout << "The smalles distance is: " << std::min(routes[0], routes[1]) << '\n';
   std::cout << "The largest distance is: " << std::max(routes[0], routes[1]) << '\n';
   std::cout << "And the mean is: " << (routes[0] + routes[1]) / 2 << '\n';
   return 0;
   
}
