// 07/23/2021
// Purpose: Creates a vector of fibonacci numbers and prints it
#include <iostream>
#include <vector>

void print(const std::vector<int>& vi) {
   for (const auto& e : vi) {
       std::cout << e << '\n';
   }
}
        
void fibonacci(const int& x, const int& y, std::vector<int>& v, const int& n) {
// Preconditions: x should be less than y
// v should be an empty vector
    v.push_back(x);
    v.push_back(y);
    for (size_t i{}; i < n; i++) {
      v.push_back(v[i] + v[i+1]);    
    } 
}

int main() {
    std::vector<int> v;
    const int x{ 1 };
    const int y{ 2 };
    const int n{ 5 };
    fibonacci(x, y, v, n);
    print(v);
}

