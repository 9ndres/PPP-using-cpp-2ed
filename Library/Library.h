#pragma once
#include <string>
#include <iostream>
#include "Date.h"

struct ISBN {
	ISBN(const long& is);
	bool is_valid() { return valid; }
private:
	long barcode{};
	bool valid = false;
};

struct Book {
	// represent a book in the format author, title, 
	Book(const std::string& a, const std::string& t, const ISBN& is);
	std::string get_title() { return title; }
	std::string get_author() { return author; }
private:
	std::string title;
	std::string author;
	ISBN isbn;
};
