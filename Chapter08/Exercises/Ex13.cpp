#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

using std::vector;
using std::string;

vector<int> count(const vector<string>& x) {
    vector<int> vi;
    for (const auto& e : x) {
        vi.push_back(e.size());
    }
    return vi;
}


int main() {
    const vector<string> vs { "f", "fo", "foo" };
    auto [min, max] = std::minmax_element(vs.begin(), vs.end());
    std::cout << "min: " <<  *min << ' ' << "max: " << *max << '\n';

    for(const auto x: count(vs)) {
        std::cout << x << '\n';
    }
}
