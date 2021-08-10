// 08/10/2021
// Purpose: Same as previous drills,
// implements enum class to represent months.

enum class Month {
    jan = 1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
};

class Date {
public:
    Date(int, Month, int);
    int day() { return d; }
    Month month() { return m; }
    int year() { return y; }
private:
    int y, d;
    Month m;
};

Date::Date(int yy, Month mm, int dd)
    :y(yy), m(mm), d(dd)
{
}

int main() {
    Date born{2021, Month::aug, 24};
}
