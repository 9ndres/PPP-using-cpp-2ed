#include <iostream>
int fib(int n) {
   while(n < 10){
   return n + fib(n);
   }
}

int main() {
  std::cout << fib(1);
}