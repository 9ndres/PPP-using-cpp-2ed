#include "Tokenize.h"

Token_stream::Token_stream()
	:full{ false }, buffer{ 0 }
{
}

void Token_stream::putback(Token t) {
	if (full) { throw BadExpr{ "putback() into a full buffer" }; }
	full = true;
	buffer = t;
}

Token Token_stream::get() {
	const char NUMBER = '8';

	if (full) {
		full = false;
		return buffer;
	}

	char ch;
	std::cin >> ch;
	switch (ch) {
	case ';':
	case 'q':
	case '{':
	case '}':
	case '(':
	case ')':
	case '+':
	case '-':
	case '*':
	case '/':
	case '!':
	case '%':
		return Token{ ch };
	case '.':
	case '0': case '1': case '2': case '3': case '4':
	case '5': case '6': case '7': case '8': case '9': {
		std::cin.putback(ch);
		double val;
		std::cin >> val;
		return Token{ NUMBER, val };
	}
	default:
		throw BadExpr{ "Bad token" };
	}
}
