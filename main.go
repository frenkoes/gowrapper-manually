package main

// #include "number.h"
import "C"

func main() {
	nr := C.Number_create()
	C.Number_setNumber(nr, 10)
	C.Number_print(nr)
	C.Number_destroy(nr)

}
