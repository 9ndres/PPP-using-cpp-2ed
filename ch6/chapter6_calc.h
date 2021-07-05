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
	Token(char ch) :kind{ ch } {}
	Token(char ch, double val) :kind{ ch }, value{ val } {}
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

void Token_stream::putback(Token t) {
	if (full) { BadExpr{ "putback into a full buffer" }; }
	buffer = t;
	full = true;
}