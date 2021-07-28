// 07/28/2021
// Purpose: given a vector stores the  smallest and  largest element
// as well as the mean and median inside a struct
#include <iostream>
#include <vector>
#include <iostream>
#include <algorithm> //std::minmax_elem
#include <numeric> // std::accumulate

using std::vector;

struct Values {
    double smallest{ 1000 };
    double largest{ -1000 };
    double mean{};
    double median{};
};

double getMedian(vector<double>);

struct Values getValues(const vector<double>& VD) {
   using std::accumulate;
   Values vals;

   // Structure binding -std=c++17
   const auto [min, max] = std::minmax_element(VD.begin(), VD.end());
   vals.smallest = *min;
   vals.largest = *max;

   // Note if accumulate receives 0 instead of 0.0 as third parameter
   // the return value will be narrowed to an int
   vals.mean = accumulate(VD.begin(), VD.end(), 0.0) / VD.size();
   vals.median = getMedian(VD);
   return vals;
}

double getMedian(vector<double> vd) {
    std::sort(vd.begin(), vd.end());
    auto middle = vd.size() / 2;

    if (vd.size() % 2) {
        return vd[middle];
    }
    return (vd[middle] + vd[middle - 1]) / 2;
}
int main() {
    std::vector<double> vd { 10.11, 11.2, 14.4 };
    struct Values x = getValues(vd);
}
