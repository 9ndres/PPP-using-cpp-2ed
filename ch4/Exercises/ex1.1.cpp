//  06/21/2021 
// About: ex1.1 - ex1.4 snippets implement chapter 4 "try this" of "PPP using c++". 

#include <iostream>
#include <string>
#include <vector>

// currency converter if version.
double  cnyConverterIf(char cny, double qty) {  
  constexpr double yen = 0.009066, kroner = 0.1165, 
                   pounds = 1.393;

   if (cny == 'y') {
       return qty * yen;
   } else if (cny == 'k'){
       return qty * kroner;
   } else if (cny == 'p'){
       return qty * pounds;
   } else {
       return -1;
   }
}

int main() {
    char currency = ' ';
    double quantity;

    std::cout << "Enter a value followed by a currency to get its equivalent in dollars:\n"
        <<"yen(y), kroner(k) and pounds(p)\n";
   std::cin >> quantity  >> currency;
   std::cout << cnyConverterIf(currency, quantity) << " dollars\n";
   

   return 0;
}
