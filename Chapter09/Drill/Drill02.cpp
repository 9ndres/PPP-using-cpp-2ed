// Purpose: Improves Drill01 with the use of ctors
struct Date {
    Date(int, int, int);
    int y, m, d;
};

Date::Date(int yy, int mm, int dd)
    :y(yy), m(mm), d(dd)
{
}
