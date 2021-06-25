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
   
   if (routes[0] < routes[1]) {
      std::cout << "The smallest distance is: " << routes[0] << " and the greatest is: " << routes[1];   
   } else {
      std::cout << "The smallest distance is: " << routes[1] << " and the greatest is: " << routes[0];   
   }
   
   std::cout << "\nThe total distance is: " << routes[0] + routes[1] << '\n';
   // to implement: calculate the mean and print it
   return 0;
   
}
