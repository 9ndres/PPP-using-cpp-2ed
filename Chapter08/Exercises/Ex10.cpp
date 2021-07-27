// 07/27/2021
#include <vector>
#include <algorithm> // std::max_elem
// Revision needed
template<class T>
auto  maxV(const std::vector<T>& VT) {
    // Return the largest element in VT.
     return std::max_element(VT.begin(), VT.end());
}

