// Number class used to wrap in C
#include <iostream>

class Number {
    public:
        Number();
        ~Number();
        void SetNumber(int x);
        void Print();
    private:
        int x;
};