#include <iostream>
#include <string>
#include <vector>

// "BLEEPS" in the presence of disgusting words.
std::vector<std::string> bleep(std::vector<std::string> ewords) {
    std::vector<std::string> diswords { "duck", "beach", "sheet",
        "uwu", "failure" };

    for (int i = 0; i < diswords.size(); i++) {
       for (int j= 0; j < ewords.size(); j++) {
           if (ewords[j] == diswords[i] ) {
               ewords[j] = "BLEEP";
           }
       }
    } 
    return ewords;
}

int main() {
// Bleep try this
   std::vector<std::string> ewords;
   std::cout << "Enter a set of words followed by Ctrl-D\n";

   for (std::string ew; std::cin >> ew;) {
         ewords.push_back(ew);
   }
   
  for (const auto& x : bleep(ewords)){
      std::cout << x << '\n';
   }
   
   return 0;
}
