// This program covers ex2 and ex3 
// TODO: Add factorial precedence
#include <string>
#include <vector>
#include <cmath> // std::fmod
#include "Tokenize.h"

double Term();
double Primary();
Token_stream ts;

double Statement() {
	Token t = ts.get();
	switch (t.kind) {
	case let :
		return Declaration();
	default:
		ts.putback(t);
		return Expression();
	}
}

double Expression() {
	double left = Term();
	Token t = ts.get();

	while (true) {
		switch (t.kind) {
		case '+':
			left += Term();
			t = ts.get();
			break;
		case '-':
			left -= Term();
			t = ts.get();
			break;
		default:
			ts.putback(t);
			return left;
		}
	}
}

double Term() {
	double left = Primary();
	Token t = ts.get();

	while (true) {
		switch (t.kind) {
		case '*':
			left *= Primary();
			t = ts.get();
			break;
		case '/': {
			double d = Primary();
			if (d == 0) { throw BadExpr{ "divide by zero" }; }
			left /= d;
			t = ts.get();
			break;
		}

		case '!': {
			int x = static_cast<int>(left);
			return factorial(x);
		}
		case '%': {
			double d = Primary();
			if (!d) {
				throw BadExpr{ "division by zero" };
			}
			left = std::fmod(left, d);
			t = ts.get();
			break;
		}

		default:
			ts.putback(t);
			return left;
		}
	}
}

double Primary() {
	const char NUMBER = '8';
	Token t = ts.get();
	switch (t.kind) {
	case '{': {
		double d = Expression();
		t = ts.get();
		if (t.kind != '}') { throw BadExpr{ "'}' expected" }; }
		return d;
	}

	case '(': {
		double d = Expression();
		t = ts.get();
		if (t.kind != ')') { throw BadExpr{ "')' expected " }; }
		return d;
	}
	case NUMBER:
		return t.value;
	case '-':
		return -Primary();
	case '+':
		return Primary();
	case 'q':
		ts.putback(t);
		break;
	default:
		throw BadExpr{ "(primary expected)" };
	}
}

void Calculate() {
	const char QUIT = 'q', PRINT = ';';
	const std::string PROMPT = "> ", RESULT = "= ";

	while (std::cin) {
		std::cout << PROMPT;
		Token t = ts.get();
		while (t.kind == PRINT) {
			t = ts.get();
		}
		if (t.kind == QUIT) {
			return;
		}
		ts.putback(t);
		std::cout << RESULT << Statement() << '\n';
	}
}

int main() {
	std::vector<Variable> var_table;
	try {
		Calculate();
		return 0;
	}
	catch (BadExpr& e) {
		std::cerr << e.what() << '\n';
		return -1;
	}
	catch (...) {
		std::cerr << "exception\n";
		return 2;
	}
}