#include "Date.h"

Date::Date(int y, const Month& m, int d) 
    :year(y), month(m), day(d) 
{
    try {
        if (year > 3000 || 1000 > year) {
            throw;
        }

        if (day > 31 || day < 1) {
            throw;
        }
    }
    catch(...) {
        std::cerr << "Invalid Date\n";
    }
}


