#include <vector>
#include <algorithm> // std::sort
#include <iostream>

using std::vector;
using std::string;

void getNameAge(vector<string>* names, vector<int>* ages) {
    // Read input and push it to names and ages 
    string nm;
    int ag;
    for (int i = 0; i < 5; ++i) {
        std::cin >> nm >> ag;
        names->push_back(nm);
        ages->push_back(ag);
    }
}

void printNameAge(const vector<string>& NAMES, const vector<int>& AGES) {
    for (int i = 0; i < 5; ++i) {
        std::cout << NAMES[i] << ' ' << AGES[i] << '\n';
    }
}

int main() {
    vector<string> names; 
    vector<int> ages;
    getNameAge(&names, &ages);
   // Differentiate between input and output
    std::cout << string(25, '-') << '\n'; 
    std::sort(names.begin(), names.end());
    printNameAge(names, ages);
}


