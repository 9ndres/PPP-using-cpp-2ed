// 10/08/2021
// Purpose: Creates a simple struct representing a date.

struct Date {
    // year/month/day
    int y;
    int m;
    int d;
};

void init_day(Date& d, int yy, int mm, int dd) {
    // Check if arguments are valid and if so initialize d with them;
    if (yy > 3000 || yy < 0) { throw; }
    if (dd > 31 || dd < 1) { throw; }
    if (mm > 12 || mm < 1) { throw; }
    d.y{yy};
    d.m{mm};
    d.d{dd};
}

void add_day(Date& d, int n) {
    d.d += n;
}
