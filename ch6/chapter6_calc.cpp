#include <string>
#include <vector>
#include "chapter6_calc.h"


double term();
double primary();
Token_stream ts;

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
			ts.putback(t);
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
			ts.putback(t);
			return left;
		}
	}
}

double primary() {
	Token t = ts.get();
	switch (t.kind) {
	case '(' : {
		double d = expression();
		t = ts.get();
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
	double val = 0;
	//Token_stream ts;

	try {
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