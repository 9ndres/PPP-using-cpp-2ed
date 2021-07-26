// 07/23/2021
// Purpose: Creates a vector of fibonacci numbers, sum its elements and stores it 
// in an int.
#include <iostream>
#include <vector>
#include <numeric> // std::accumulate

using std::vector;

       
auto fibonacci(const int& x, const int& y, vector<int>& v, const int& n) {
// Preconditions: x should be less than y
// v should be an empty vector
    v.push_back(x);
    v.push_back(y);
    for (size_t i{}; i < n; i++) {
      v.push_back(v[i] + v[i+1]);    
    } 
    return std::accumulate(v.begin(), v.end(), 0);
}

int main() {
    vector<int> v;
    constexpr int x{ 1 };
    constexpr int y{ 2 };
    constexpr int n{ 50 }; 
    // answer an int can hold up to 50 fibonacci (lineal order) numbers: 2144908971 
    const int ans = fibonacci(x, y, v, n);
    std::cout << ans << '\n';
}

