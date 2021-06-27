// This snippet covers from ex11 up to ex15
#include <iostream>
#include <vector>

std::vector<int> sieveErathostenes(int max) {
   std::vector<int> primes {2, 3, 5, 7};

   for (int i = 0; i < max; i++) {
        if (i % 2 && i % 3 && i % 5 && i % 7) { // if is not divisible by any prime
         primes.push_back(i);
      }
   }
   return primes;
}

int main() {
   int max; 
   std::cin >> max;
   for (const auto& e : sieveErathostenes(max)) {
      std::cout << e << '\n';
   }
   return 0;
}
