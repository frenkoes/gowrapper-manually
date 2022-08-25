#include "number.hpp"
#include "number.h"


extern "C" {

    HNumber Number_create() {
        return reinterpret_cast<void*>(new Number());
    }
    void Number_destroy(HNumber n) {
        delete reinterpret_cast<Number*>(n);
    }
    void Number_setNumber(HNumber n, int x) {
        reinterpret_cast<Number*>(n)->SetNumber(x);
    }

    void Number_print(HNumber n) {
        reinterpret_cast<Number*>(n)->Print();
    }

}