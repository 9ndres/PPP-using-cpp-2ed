#include <iostream>

double calculator(char ioperator, const double& num1, const double& num2)
{
    if(ioperator == 'x'){
        return num1 * num2;
    }
    else if(ioperator == '+'){
        return num1 + num2;
    } 
    else if (ioperator == '-'){
        return num1 - num2;
    }
    else if (ioperator == '/'){
        return num1 / num2;
    }

    return 0;
}
int main(){
    std::cout << "Enter an operator followed by two floating point numbers\n";
    double num1, num2;
    char ioperator;
    if(std::cin >> ioperator >> num1 >> num2){
        std::cout << calculator(ioperator, num1, num2) << '\n';
    }
        
    return 0;
}
