#pragma once
#include "Date.h"
#include "Library.h"


struct Patron {
	Patron(const std::string& n, int lc) 
		:name(n), library_card(lc) {}

	void set_fee();
	bool owns_fee();
	int get_fee() { return fee; }
private:
	std::string name;
	int fee = 0;
	int library_card;
};