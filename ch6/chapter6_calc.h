// chapter6_calc.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <iostream>

// TODO: Reference additional headers your program requires here.
struct BadExpr {
	BadExpr(std::string errMessage) :eM{ errMessage } {}
	std::string what() { return eM; }
	std::string eM;
};

class Token {
public:
	double value{};
	char kind;
	Token(char ch)
		:kind{ ch } { }
	Token(char ch, double val) 
		:kind{ ch }, value{ val } { }
};

class Token_stream {
public:
	Token_stream();
	Token get();
	void putback(Token t);
private:
	bool full{ false };
	Token buffer;
};

inline Token_stream::Token_stream()
	:full{ false }, buffer{ 0 }
{
}

inline void Token_stream::putback(Token t) {
	if (full) { throw BadExpr{ "putback() into a full buffer" }; }
	full = true;
	buffer = t;
}

inline Token Token_stream::get() {
	if (full) {
		full = false;
		return buffer;
	}

	char ch;
	std::cin >> ch;

	switch (ch) {
	case ';': case 'q':
	case '{': case '}':
	case '(': case ')': case '+': case '-': case '*': case '/': case '!':
		return Token{ ch };
	case '.':
	case '0': case '1': case '2': case '3': case '4':
	case '5': case '6': case '7': case '8': case '9': {
		std::cin.putback(ch);
		double val;
		std::cin >> val;
		return Token{ '8', val };
	}
	default:
		throw BadExpr{ "Bad token" };
	}
}