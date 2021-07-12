#include <iostream>
#include <string>
#include <cmath> // std::sqrt

void nameAndAge() {
    std::cout << "Please enter your name and age\n";
    std::string first_name{"???"};
    double age = 0;
    std::cin >> first_name >> age;
    age *= 12;
    std::cout << "Hello, " << first_name << ' ' << "(age " << age << " months)\n";
}

void basicArithmetic() {
    std::cout << "Please enter a floating point value: ";
    double floatValue;
    std::cin >> floatValue;
    std::cout << "floatValue == " << floatValue <<'\n'
              << "floatValue + 1 = " << floatValue + 1 << '\n'
              << "three times floatValue = " << 3*floatValue << '\n'
              << "twice floatValue = " << floatValue * floatValue << '\n'
              << "half of floatValue = " << floatValue / 2 << '\n'
              << "square root of floatValue = " << std::sqrt(floatValue) << '\n';
}

void repeatedWord() {
    std::string previous;
    std::string current;

    while (std::cin>>current && current != ";") {
        if(previous == current) { std::cout << current << '\n'; }
        previous = current;
    }
}

/*
void goodByeCruelWorld()
{
    std::STRING s = "Good bye Cruel World\n"; // error: STRING is not a member of std
    std::cOut << S << '\n'; //cOut is not a member of std, S was not declared in this scope
}
*/

void narrowingConversion() {
    double d = 0;
    std::cout << "enter a decimal number: ";
    while(std::cin>>d){
    int i{d};
    char c = i;
    int i2 = c;
    std::cout << d << '\n'
              << i << '\n'
              << c << '\n'
              << i2 << '\n';
    }
}

int main() {
    nameAndAge();
    basicArithmetic();
    repeatedWord();
    narrowingConversion();
    return 0;
}
