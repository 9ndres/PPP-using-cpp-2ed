// This program covers ex2 and ex3 
// Todo: add factorial precedence
#include <string>
#include <vector>
#include "chapter6_calc.h"

double term();
double primary();
Token_stream ts;

int factorial(int n) {
	while (n > 1) {
		return n * factorial(n - 1);
	}
	return 1; // if n == 0
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
		
		case '!': {
			int x = static_cast<int>(left);
			return factorial(x);
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
	case '{': {
		double d = expression();
		t = ts.get();
		if (t.kind != '}') { throw BadExpr{ "'}' expected" }; }
		return d;
	}

	case '(' : {
		double d = expression();
		t = ts.get();
		if (t.kind != ')') { throw BadExpr{ "')' expected " }; }
		return d;
	}
	case '8':
		return t.value;
	case 'q' :
		ts.putback(t);
		break;
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