// This exercise could've been easier with "enums".
// Purpose: Practice the use of vectors and loops"
#include <iostream>
#include <vector>
#include <string>

std::string digitToSpell(int digitNum, std::vector<std::string> sNums) {
   
   return sNums[digitNum];
}

int spellToDigit(std::string spelledNum, std::vector<std::string> sNums) {
  for(int i = 0; i < sNums.size(); i++) {
     if (spelledNum == sNums[i])
      return i;
   } 
   return -1;
}


int main() {
   std::vector<std::string> sNums { "zero","one", "two", "three", "four",
                                    "five", "six", "seven", "eight", "nine" };

   std::cout << "Enter a spelled number to get its equivalent in digit(0 - 9):\n";
   std::string spelledNum;
   std::cin >> spelledNum;
   std::cout << spellToDigit(spelledNum, sNums) << '\n';
   
   std::cout << "Enter a digit number to get its equivalent word(0 - 9):\n";
   int digitNum;
   std::cin >> digitNum;
   std::cout << digitToSpell(digitNum, sNums) << '\n';
   
   return 0;
}
