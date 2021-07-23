// 23/07/2021
// Purpose: Swaps by value, by reference and by const reference
void swap_v(int a, int b) {
   int temp;
   temp = a;
   a = b;
   b = temp;
}


void swap_r(int& a, int& b) {
   int temp;
   temp = a;
   a = b;
   b = temp;
}

void swap_cr(const int& a, const int& b ) {
   int temp;
   temp = a;
   a = b;
   b = temp;
}


int main() {
   int x = 7;
   int y = 9;
 // swap_r(7, 9);
 // cannot bind non-const lvalue reference of type ‘int&’ 
 // to an    rvalue of type ‘int’

}
