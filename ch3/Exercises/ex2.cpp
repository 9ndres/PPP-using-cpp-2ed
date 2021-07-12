// Purpose: Provoke syntax errors and analyze its output

int main() {
    int double x; // error two or more data types in declaration of 'x'
    foo int y; // foo was not declared in ths scope
    int 9z; // expected unqualified-id before numerci constant
    *int _s; // expected primary expression before 'int'
    return 0;
}
