// 07/26/2021
// Purpose: Swap by value and by reference a vector of ints
#include <vector>
#include <algorithm> //std::swap, std::swap

using std::vector;

void rvectorSwap(vector<int>& vi) {
   using std::swap;
   auto start = 0;
   auto end = vi.size() - 1;

   while (start < end) {
      swap(vi[start], vi[end]);
      ++start;
      --end;
   }
}

auto vvectorSwap(vector<int> vi) {
   // Alternative version:
   using std::reverse;
   reverse(vi.begin(), vi.end());
   return vi;
}
int main() {
   vector<int> vi { 1, 2, 3};
   const std::vector<int> x = vvectorSwap(vi); // x = { 3, 2, 1 }
   rvectorSwap(vi); // vi = { 3, 2, 1 }
}
