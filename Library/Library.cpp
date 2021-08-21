#include "Library.h"

ISBN::ISBN(const long& is) {
	// Do checking 
	if (true) {
		is_valid = true ;
		barcode = is;
	}
}
Book::Book(const std::string& a, const std::string& t, const ISBN& is)
	:author(a), title(t), isbn(is)
{
}