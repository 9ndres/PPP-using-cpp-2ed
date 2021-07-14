// Purpose: Apply basic selection statements (switch) 
#include <iostream>

int main() {
   double num1, num2;
   char op;
   std::cout << "Enter two floating point numbers and an operator in between\n"
             << "('+', '-', '/', '*'):\n";
   
   while(std::cin >> num1 >> op >> num2) {
      switch(op) {
         case '+':
         std::cout << "The sum of " << num1 << " and " << num2 <<  " is: " << num1 +num2 << '\n';
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
   return 0;
}
