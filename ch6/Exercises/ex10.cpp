// 13/07/2021
// Purpose: Prompts the user for two numbers then calculates
// the permutation or the combination of those two numbers.

#include <iostream>

class Werr {};
int Factorial(int n) {
   while (n > 1) {
      return n * Factorial(n- 1);
   }
   return 1;
}

int Permutation(const int N, const int R) {
   return Factorial(N) / Factorial((N - R));
}

int main() {
   try {
   int n{}, r{};
   std::cin >> n >> r;
   if (r > n) {
      throw Werr{};
   }
   std::cout << Permutation(n, r) << '\n';
   }
   catch(...) {
      std::cerr << "__ERROR__ lhs number greater than rhs number\n";
      return -1;
   }
}