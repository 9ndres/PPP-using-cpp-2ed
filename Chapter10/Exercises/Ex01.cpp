// 09/16/2021
// Purpose: Reads a list of space separeted ints and accumulates them
#include <fstream>
#include <iostream>

int main() {
  std::ifstream ist{ "ints" };
  int ans = 0;
  for(int i = 0; ist >> i;) {
     ans += i;
  }
  std::cout << ans << '\n';
}