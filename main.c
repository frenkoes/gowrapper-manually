#include "number.h"

int main() {
    HNumber Nr;
    Nr = Number_create();
    Number_setNumber(Nr, 10);
    Number_print(Nr);
    Number_destroy(Nr);
    return 0;
}