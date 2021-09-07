#pragma once
#include <vector>
#include "Date.h"
#include "Patron.h"
#include "Library.h"

class Library {
	// Holds a register of the current library books 
	// as well as its patrons and transactions;
	std::vector<Book> vB;
	// Todo: Everytime a user creates a new book/patron/transaction gets
	// automatically pushed to its respective vector
	std::vector<Patron> vP;
	std::vector<Transactions> vT;
};

struct Transactions {

};