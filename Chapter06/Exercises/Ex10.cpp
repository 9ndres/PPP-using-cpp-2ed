// 13/07/2021
// Purpose: Prompts the user for two numbers then calculates
// the permutation or the combination of those two numbers.

#include <iostream>
#include <string>

class Werr {
public:
   Werr(std::string w) :w_{w} {}
   std::string what() { return w_; }
private:
   std::string w_ { "Unknown Error" };
};

int Factorial(int n) {
   while (n > 1) {
      return n * Factorial(n- 1);
   }
   return 1;
}

int Permutation(const int N, const int R) {
   return Factorial(N) / Factorial((N - R));
}

int Combination(const int N, const int R) {
   return Permutation(N, R) / Factorial(R);
}

int main() {
   try {
      int n{}, r{};
      std::cout << "Enter two integers a and b:\n";
      std::cin >> n >> r;
      if (r > n) {
       throw Werr{ "lhs number greater than rhs number" };
      }
      std::cout << "Enter 'p' to calculate the permutation of (a, b)" 
      R"( or 'c' to get the combination
)";

      char cho;
      std::cin >> cho;

      switch(cho) {
         case 'p':
         std::cout << Permutation(n, r) << '\n';
         break;
         case 'c':
         std::cout << Combination(n, r) << '\n';
         break;
         default:
         throw Werr{"Not a valid option"};
      }
   }
   catch(Werr& e) {
      std::cerr << "__ERROR__" << e.what() << '\n';
      return -1;
   }
}