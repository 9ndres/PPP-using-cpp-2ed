#include <string>
#include "Library.h"
#include "Date.h"
#include <iostream>

int main() {
	Book num001{ "Shakespeare", "Hamlet", ISBN{ 1212121212 } };
	Book num002{ "Antoine de Saint-Exupery", "Le Petit Prince", ISBN{ 1212121212 } };
	auto foo = num001 == num002;
	std::cout << std::boolalpha << foo << '\n';
}