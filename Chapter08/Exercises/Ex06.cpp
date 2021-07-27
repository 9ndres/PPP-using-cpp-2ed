// 07/27/2021
// Purpose: Swap by value and by reference a vector of strings 
#include <iostream>
#include <vector>
#include <algorithm> //std::swap, std::reverse

using std::vector;
using std::string;

void rvectorSwap(vector<string>& vs) {
   using std::swap;
   auto start = 0;
   auto end = vs.size() - 1;

   while (start < end) {
      swap(vs[start], vs[end]);
      ++start;
      --end;
   }
}

auto vvectorSwap(vector<string> vs) {
   // Alternative version:
   using std::reverse;
   reverse(vs.begin(), vs.end());
   return vs;
}
int main() {
   vector<string> vs { "foo", "baz", "bar"};
   const std::vector<string> x = vvectorSwap(vs); // x = { bar, baz, foo }
   rvectorSwap(vs); // vs = { bar, baz, foo }
}
