#pragma once
#include <vector>
#include "Date.h"
#include "Patron.h"
#include "Library.h"

class Library {
	std::vector<Book> vb;
	std::vector<Patron> vp;
	std::vector<Transaction> vt;
};


struct Transaction {
	Transaction(const Book& rb, const Patron& rp, const Date& rd)
		:reg_book(rb), reg_patr(rp), reg_date(rd)
	{
	}
Book reg_book;
	Patron reg_patr;
	Date reg_date;
};