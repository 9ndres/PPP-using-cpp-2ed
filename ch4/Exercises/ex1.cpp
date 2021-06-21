//  06/21/2021 
// About: this snippet implements the chapter 4 of "PPP using c++" try this exercise
// it simply converts from one currency to dollars.
// Purpose: apply the use of basic selection statements

#include <iostream>
#include <string>

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

double cnyConverterSwitch(char cny, double qty) {
     constexpr double yen = 0.009066, kroner = 0.1165, 
                   pounds = 1.393;
    switch(cny){
    case 'y':
    return qty * yen;   // when return is used "break" becomes unnecesary.
    case'k':
    return qty * kroner;
    case'p':
    return qty * pounds;
    default: 
    return -1;
    }
}
int main() {
    std::cout << "Enter a value followed by a currency to get its equivalent in dollars:\n"
        <<"yen(y), kroner(k) and pounds(p)\n";
   
   char currency = ' ';
   double quantity;
   std::cin >> quantity  >> currency;
   std::cout << cnyConverterIf(currency, quantity) << '\n';
   return 0;
}





