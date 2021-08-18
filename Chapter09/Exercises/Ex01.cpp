// 08/18/2021
#include <vector>
#include <iostream>
#include <string>
#include <algorithm> // std::swap
using std::vector;
using std::string;

class Name_pairs {
   // Store a pair of name and age inside a string/double vector
   // provide an interface to modify and read said vectors
public:
   void read_ages();
   void print();
   void sort_na();
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

void Name_pairs::print() {
   // print x for both vectors; age and name must have
   // the same size ::read_ages ensures that this requirement is met

   if(!name.size()) {
      throw; // Don't print empty vectors
   }

   for (auto x = 0; x < name.size(); ++x) {
     std::cout << name[x] << ' ' << age[x] << '\n';
  }
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
   for(auto x = 0; x < 5; ++x) {
      np.read_ages();
   }
   np.sort_na();
   np.print();
}