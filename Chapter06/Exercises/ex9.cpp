// 07/13/2021
// Purpose: Outputs the spelled version of a digit (up to four digits)

#include <iostream>
#include <string>

void Speller(std::string digit_str) {
   // Precondition: a string of size between 1 and 4 
   switch(digit_str.size()) {
      case 1:
      std::cout << digit_str[0] << " ones\n";
      break;
      case 2:
      std::cout << digit_str[0] << " tens " << digit_str[1] << " ones\n";
      break;
      case 3:
      std::cout << digit_str[0] << " hundred " << digit_str[1] 
                << " tens " << digit_str[2] << " ones\n";
      break;
      case 4:
      std::cout << digit_str[0] << " thousand " << digit_str[1] 
                << " hundred " << digit_str[2] << " tens " << digit_str[3] << " ones\n";
   }
}

int main() {
   int digit;
   std::cin >> digit;
   auto digit_str{ std::to_string(digit) };
   Speller(digit_str);
}