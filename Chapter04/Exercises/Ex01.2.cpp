#include <iostream>
#include <string>
#include <vector>

// currency converter switch version
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
   char currency = ' ';
    double quantity;

    std::cout << "Enter a value followed by a currency to get its equivalent in dollars:\n"
        <<"yen(y), kroner(k) and pounds(p)\n";
   std::cin >> quantity  >> currency;
   std::cout << cnyConverterSwitch(currency, quantity) << " dollars\n";

   return 0;
}
