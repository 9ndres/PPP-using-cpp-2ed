#include "Patron.h"

void Patron::set_fee() {
	int f;
	std::cout << "Enter the amount to charge: \n";
	std::cin >> f;
	fee = f;
}

bool Patron::owns_fee() {
	if (fee) {
		return true;
	}
	return false;
}
