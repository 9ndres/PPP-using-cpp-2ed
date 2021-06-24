// Purpose: implement new functionalities to older code (ex5)
#include <iostream>
#include <vector>
#include <string>

int spellToNum (std::string spellNum) {
   std::vector<std::string> sNums { "zero","one", "two", "three", "four",
                                    "five", "six", "seven", "eight", "nine" };
   for (int i = 0; i < sNums.size(); i++) {
      if (spellNum == sNums[i])
         return i;   
   }
   return -1;
}
void singleDigitCalc(int num1, char op, int num2) {
   switch(op) {
      case '+':
      std::cout << "The sum of " << num1 << " and " << num2 <<  " is: " << num1 + num2 << '\n';
      break;
      case '-':
      std::cout << "The substraction of " << num1 << " and " << num2 <<  " is: " << num1- num2 << '\n';
      break;
      case '*':
      std::cout << "The multiplication of " << num1 << " and " << num2 <<  " is: " << num1 * num2 << '\n';
      break;
      case '/':
      std::cout << "The division of " << num1 << " and " << num2 <<  " is: " << num1 / num2 << '\n';
      break;
      default:
      std::cout << "I can't perform that operation\n";
    }
}

int main() {
   
   std::string snum1, snum2;
   int dnum1, dnum2;
   char op;
   char dos;

   std::cout << "Enter 'd' for digits or 's' for spelled out numbers\n";
   std::cin >> dos;
   if (dos == 'd') {
       std::cout << "Enter two single digit integer numbers and an operator in between"
             << "('+', '-', '/', '*'):\n";

       
       std::cin >> dnum1 >> op >> dnum2;
       singleDigitCalc(dnum1, op, dnum2);
   } else {
       std::cout << "Enter two spelled digit (zero, two, ..., nine) "
                 << "integer numbers and an operator in between\n"
                 << "('+', '-', '/', '*'):\n";
      std::cin >> snum1 >> op >> snum2;
      singleDigitCalc(spellToNum(snum1), op, spellToNum(snum2));
   }
  
   return 0;
}
