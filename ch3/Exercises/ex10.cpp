// Purpose: Performs basic arithmetic over a pair of doubles
#include <iostream>

double calculator(char ioperator, const double& num1,
                  const double& num2) {
    double ans = 0;
    // Exercise specifies the use of if-else statements 
    if (ioperator == '*') { ans = num1 * num2; }
    else if (ioperator == '+') { ans = num1 + num2; } 
    else if (ioperator == '-') { ans = num1 - num2; }
    else if (ioperator == '/') { ans = num1 / num2; }
    return ans;
}

int main() {
    double num1, num2;
    char ioperator;

    std::cout << "Enter an operator followed by two floating point numbers\n";
    if (std::cin >> ioperator >> num1 >> num2) {
        std::cout << calculator(ioperator, num1, num2) << '\n';
    }
    return 0;
}
