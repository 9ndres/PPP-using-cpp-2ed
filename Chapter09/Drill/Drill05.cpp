// 08/11/2021
// Purpose: Creates a type Date, provides methods to get its values
// as well as a constructor to define them. Makes explicit that Date::year,
// Date::month and Date::day should not modife the object

enum class Month {
    jan = 1, feb, mar, apr, may, jun, jul, aug, sep, oct,
    nov, dec
};

class Date {
public:
    Date(int yy, Month mm, int dd);
    // Don't modify the object
    int day() const;
    int year() const;
    Month month() const;
    void add_day(Date& d, int n);
private:
    int d, y;
    Month m;
};

Date::Date(int yy, Month mm, int dd) 
    :y(yy), m(mm), d(dd) 
{
}

int Date::day() const {
    return d;
}

int Date::year() {
    return y;
}

Month Date::month() {
    return m;
}

void Date::add_day(Date& d, int n) {
    d.d += n;
}

void some_fun(Date& d, const Date& startOfTerm) {
   int a = d.day();
   int b = startOfTerm.day();
}

int main() {
  Date today{8, Month::aug, 2021}; 
  Date someDay{19, Month::sep, 2030};
  some_fun(today, someDay);
}
