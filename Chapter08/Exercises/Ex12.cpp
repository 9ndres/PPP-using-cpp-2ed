// 07/28/2021
// Purpose: Prints a vector of strings until a determined string "s"
// appears.
#include <iostream>
#include <vector>
#include <string>
#include <algorithm> // std::count
using std::vector;
using std::string;

void printUntilS(const vector<string>& v,const string& quit) {
    for (const auto& s : v) {
        if (s == quit) { return; }
        std::cout << s << '\n';
    }
}

void printUntilSS(const vector<string>& v, const string& quit) {
    int x = 0; 
    for (const auto& s : v) {
        if (s == quit) {
            ++x;
        }
        if (x > 2) { return; }
        std::cout << s << '\n';
    }
}

int main() {
    const vector<string> vs = { "car", "chair", "house", "foo", "calculator" };
    printUntilS(vs, "foo");
    std::cout << string(15, '*') << '\n';
    printUntilSS(vs, "foo");
}
