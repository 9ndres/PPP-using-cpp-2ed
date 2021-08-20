// 08/20/2021
#include <vector>
#include <iostream>
#include <string>
#include <algorithm> // std::swap
using std::vector;
using std::string;

struct Name_pairs {
   // Store a pair of name and age inside a string/double vector
   // provide an interface to modify and read said vectors
   void read_ages();
   void sort_na();
   friend std::ostream& operator<<(std::ostream& os, const Name_pairs& nmp);
private:
   vector<string> name;
   vector<double> age;
};

void Name_pairs::read_ages() {
   // Read and push a double and a string
   double a;
   string n;
   std::cin >> n >> a;
   name.push_back(n);
   age.push_back(a);
}

std::ostream& operator<<(std::ostream& os, const Name_pairs& nmp) {
   // print x for both vectors; age and name must have
   // the same size ::read_ages ensures that this requirement is met

   if(!nmp.name.size()) {
      throw; // Don't print empty vectors
   }
   for (auto e = 0; e < nmp.age.size(); ++e) {
      os << nmp.name[e] << ' ' << nmp.age[e];
      if (e < nmp.age.size() - 1) {
         os << '\n';
      }
   }
   return os;
}

void Name_pairs::sort_na() {
   // sort ::name vector and preserve the original order
   for (auto i = 0; i < name.size(); ++i) {
       for (auto j = 0; j < name.size() - 1; ++j) {
          if (name[j] > name[j + 1]) {
             std::swap(name[j], name[j + 1]);
             std::swap(age[j], age[j + 1]);
          }
       }
   }
}

int main() {
   Name_pairs np;
   for(auto x = 0; x < 2; ++x) {
      np.read_ages();
   }
   np.sort_na();
   std::cout << np << '\n';
}