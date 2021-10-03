// Purpose: Calculates the mean and median based on the data in "raw_temps.txt"
#include <fstream>
#include <vector>
#include <iostream>
#include <numeric> // std::accumulate
#include "Readings.h"

double calc_mean(const std::vector<Readings>& temps) {
  double sum = 0;
  for (const auto& e : temps) {
    sum += e.temperature;
  }
  return sum / temps.size();
}

void calc_median(const std::vector<Readings>& temps) {

}


int main() {
  std::ifstream ist{ "raw_temps.txt" };
  std::vector<Readings> vreads; 

  int hour;
  double temp;

  while(ist >> hour >> temp) {
     vreads.push_back(Readings{ hour, temp });
  }

  std::cout << calc_mean(vreads);
  //calc_median(vreads);
}