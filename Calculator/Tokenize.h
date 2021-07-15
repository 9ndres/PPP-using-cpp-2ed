#pragma once

#include <iostream>
#include <string>
#include <vector>

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

class Variable {
public :
	std::string name;
	double value{};
};

inline int factorial(int n) {
	while (n > 1) {
		return n * factorial(n - 1);
	}
	return 1; // if n == 0
}

inline double GetValue(const std::string& NAME, const std::vector<Variable>& var_table) {
	for (const auto& e : var_table) {
		if (e.name == NAME) {
			return e.value;
		}
		throw BadExpr{ "Undefined variable" };
	}
}

inline void SetValue(const std::string& NAME, std::vector<Variable>& var_table, const double& VALUE) {
	for (auto& e : var_table) {
		if (e.name == NAME) {
			e.value = VALUE;
			return;
		}
		throw BadExpr{ "Undefined variable" };
	}
}