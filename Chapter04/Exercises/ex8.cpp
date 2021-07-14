#include <iostream>
#include <cmath>

int squares(int rice) {
   int i = 0;
   while (pow(2, i) < rice) i++;
   return i;
}
int main() {
   std::cout << squares(100) << '\n'
             << squares(1'000'000) << '\n'
             << squares(100'000'000) << '\n';
   return 0;
}
