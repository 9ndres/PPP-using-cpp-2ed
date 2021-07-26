// Purpose: Read a vector and prints it.
#include <iostream>
#include <vector>

using std::vector;

void print(const vector<int>& vi, const std::string& s) {
  for (const auto &e : vi) {
    std::cout << s << ' ' << e << '\n';
  }
}

int main() {
   vector<int> vi { 1, 2, 3, 4, 5, 6, 10000 };
   print( vi, "vi:");
}