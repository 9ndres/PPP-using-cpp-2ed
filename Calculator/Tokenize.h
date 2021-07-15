#pragma once

#include <iostream>

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


inline int factorial(int n) {
	while (n > 1) {
		return n * factorial(n - 1);
	}
	return 1; // if n == 0
}