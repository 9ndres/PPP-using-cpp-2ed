#pragma once
#include <iostream>

enum class Month {
    jan = 1, feb, mar, apr, may, jun, jul, aug, sep, oct,
    nov, dec
};

struct Date {
    Date(int y, const Month& m, int d);
    int get_year() const { return year; }
    int get_day() const { return day; }
    Month get_month() const { return month; };
private:
    int year, day;
    Month month;
};

