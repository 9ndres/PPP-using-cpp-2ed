#pragma once
#include <string>

struct ISBN {
	ISBN(const long& is);
private:
	long barcode{};
	bool is_valid = false;
};

struct Book {
	Book(const std::string& a, const std::string& b, const ISBN& is);
	std::string get_title() { return title; }
	std::string get_author() { return author; }
private:
	std::string title;
	std::string author;
	ISBN isbn;
};