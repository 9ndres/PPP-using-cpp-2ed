#include <string>
#include <vector>
#include "chapter6_calc.h"


double term();
double expression();
double primary();

Token get_token() {
	char ch;
	std::cin >> ch;
	switch (ch) {
	case ')': case '(': case '+': case '-': case '/': case '*':
		return Token(ch);

	case '0': case '1': case '2': case '3': case '4': case '5': 
	case '6': case '7': case '8': case '9': {
		double value;
		std::cin.putback(ch);
		std::cin >> value;
		return Token('8', value);
	}
	default: throw BadExpr{ "Bad Token" };
	}
}

double expression() {
	double left = term();
	Token t = ts.get();
	while (true) {
		switch (t.kind) {
		case '+':
			left += term();
			t = ts.get();
			break;
		case '-':
			left -= term();
			t = ts.get();
			break;
		default:
			ts.putback();
			return left;
		}
	}
}

double term() {
	double left = primary();
	Token t = ts.get();
	while (true) {
		switch (t.kind) {
		case '*':
			left *= primary();
			t = ts.get();
			break;
		case '/': {
			double d = primary();
			if (d == 0) { throw BadExpr{ "divide by zero" }; }
			left /= d;
			t = ts.get();
			break;
		}
		default:
			ts.putback();
			return left;
		}
	}
}

double primary() {
	Token t = ts.get();
	switch (t.kind) {
	case '(' : {
		double d = expression();
		t = get_token();
		if (t.kind != ')') { throw BadExpr{ "')' expected " }; }
		return d;
	}
	case '8':
		return t.value;
	default:
		throw BadExpr{ "(primary expected)" };
	}
}

int main() {
	try {
		double val = 0;
		while (std::cin) {
			Token t = ts.get();
			if (t.kind == 'q') { break; }
			if (t.kind == ';') {
				std::cout << "> " << val << '\n';
			}
			else {
				ts.putback(t);
			}
			val = expression();
		}
	}
	catch (BadExpr& e) {
		std::cerr << e.what() << '\n';
		return -1;
	}
}