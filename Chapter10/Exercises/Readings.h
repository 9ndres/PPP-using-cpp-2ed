// Purpose: Implements a class that stores temperatures readings as well as some I/O operators
#pragma once
#include <fstream>

struct Readings {
   int hour{};
   double temperature{};
};

inline std::ostream& operator<<(std::ostream& ost, Readings& r) {
   ost << r.hour << ' ' << r.temperature;
   return ost;
}

inline std::istream& operator<<(std::istream& ist, Readings& r) {
   int hour;
   double temperature;
   ist >> hour >> temperature;
   return ist; 
}