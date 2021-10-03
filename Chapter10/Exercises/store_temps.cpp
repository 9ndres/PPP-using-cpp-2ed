// Purpose: Creates a file of temperatures in the 'Readings' format
#include <fstream>
#include <istream>
#include <iostream>
#include "Readings.h"

int main() {
   std::ofstream ost{ "raw_temps.txt" };
   Readings r;
   for(int i = 1; i <= 50; ++i) {
      r.hour = i;
      r.temperature = i + 0.1;
      ost << r << '\n';
   }
}

