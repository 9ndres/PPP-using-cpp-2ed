// 08/23/2021
// Purpose: provide a way to register a book as well as methods to interact
// with book's metadata

#pragma once
#include <string>
#include <iostream>
#include "Date.h"

struct ISBN {
	// Store isbn number and check its validity
	ISBN(const long& is);
	bool is_valid() { return valid; }
	long get_isbn() const { return barcode; }
private:
	long barcode{};
	bool valid = false;
};

struct Book {
	// Represent a book in the format author, title, and isbn
	Book(const std::string& a, const std::string& t, const ISBN& is);
	// getters
	std::string get_title() const { return title; }
	std::string get_author() const { return author; }
	ISBN get_isbn() const { return isbn.get_isbn(); }
	
	// setters 
	void set_copyright_date(Date d) { copyright_date = d; }
	// operators
	friend bool operator==(Book& a, Book& b);
	friend bool operator!=(Book& a, Book& b);
	friend std::ostream& operator<<(std::ostream& os, const Book& a);
private:
	std::string title;
	std::string author;
	ISBN isbn;
	Date copyright_date{ 2000, Month::apr, 10 };
};
