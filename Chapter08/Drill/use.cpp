#include <iostream>
#include "my.h"

// has to be placed in global scope
extern int foo = 7;

int main() {
    printFoo();
    printInt(99);
}
