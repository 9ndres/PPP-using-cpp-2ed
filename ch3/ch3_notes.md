## Basic concepts:

- Object: A region of memory with a type.
- Type: Given an object its type determines what actions can be performed on it, and the storage size of that object.
- std::cin : "character in" lefts our input inside the buffer until we hit enter, newline, tab, etc.
- std::cout : "character out" lefts our output inside the buffer until we return.
- double: Stands for double-precision floating point.A float is 4 bytes and a double 8 bytes (In most modern computers)
- Literals: A literal is a representation of values of various types.

### Basic rules of thumb:

- Keep simple things simple. KSTS
- Don't start things from scratch unless you have to.
- Don't give your variables simplified names, like "y5", "wmm", "xf" and so on, neither use "way_to_long_variable_names", try to
- be as concise and descriptive as possible, some examples: "firstName", "month" and so on.

### General notes
Note:c++ 14, allows you to represent numeric literals with single quotes as digit separator. ex:
int x = 100'2111; // ok
you can also represent binary literals by prefixing 0b before your literal ex:
int y = 0b1010; // y = 10;
fixed size types: some types as int, bool, double and char have a fixed size dependant of its implementation but generally on x64 proccessors
int should be at least 4 bytes,a char should be at least 1 byte a double 8 bytes and a bool should be at least 1 byte.
You can only use letters and underscores at the start of an identifier, numbers can be added after the first character
###Safe conversions.
    `int` to `double`
    `bool` to `int`
    `bool` to `double`
    `char` to `int`
    `char` to `double`
    table 1
### Unsafe conversions
This kind of conversions are also called **narrowing conversions**, because they try to fit a value that is to large into an object that
may be too  **narrow**. A table of unsafe conversions could be obtained by inversing table 1 that is `double` to  `int` and so on,
To outlaw narrowing conversions we can use brace-initialization thus
```
double d = 21.211;
int i{d}; // warning: narrowing conversion of ‘d’ from ‘double’ to ‘int’
```

