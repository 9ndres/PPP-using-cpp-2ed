#include "Library.h"

struct Invalid {};

ISBN::ISBN(const long& is) {
	// Do checking 
	if (true) {
		valid = true ;
		barcode = is;
	}
}
Book::Book(const std::string& a, const std::string& t, const ISBN& is)
	:author(a), title(t), isbn(is)
{
	try {
		if (!isbn.is_valid()) {
			throw Invalid{};
		}
	}
	catch (Invalid&) {
		std::cerr << "Invalid ISBN identifier\n";
	}
}
 // Operators
	bool operator==(Book& a, Book& b) {
		if (a.isbn.get_isbn() == b.isbn.get_isbn()) {
			return true;
		}
		return false;
	}

	bool operator!=(Book& a, Book& b) {
		if (!(a == b)) {
			return true;
		}
		return false;
	}

	std::ostream& operator<<(std::ostream& os, const Book& a) {
		os << a.title << '\n' << a.author;
		return os;
	}
