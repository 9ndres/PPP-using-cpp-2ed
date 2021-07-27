#include <iostream>
#include <vector>

using std::vector;

double index(const vector<double>& wht, const vector<double>& hht) {
    // return the sum of the products of wht and hht
    if (wht.size() != hht.size()) { 
        throw;
    }
    double ans = 0;
    for ( auto i = 0; i < wht.size(); ++i) {
        ans += wht[i] * hht[i];
    }
    return ans;
}

int main() {
    vector<double> vWidth;
    vector<double> vHeight;
    
    for(double weight, height; std::cin >> weight >> height;) {
        vWidth.push_back(weight);
        vHeight.push_back(height);
    }

    std::cout << index(vWidth, vHeight);
}
