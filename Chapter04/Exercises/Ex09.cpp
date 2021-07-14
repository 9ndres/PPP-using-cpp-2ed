#include <iostream>
#include <cmath>

int squares(int rice) {
   int i = 0;
   while (pow(2, i) < rice) i++;
   return i;
}

int main() {
// warning: overflow in conversion from ‘double’ to ‘int’ changes value from ‘1.8446744073709552e+19’ to ‘2147483647’

   int bas = squares(pow(2, 64)); // up to 31 squares can be calculated without int overflow.
}
