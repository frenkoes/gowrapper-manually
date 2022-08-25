#ifdef __cplusplus
extern "C"
{
#endif
    typedef void* HNumber;
    HNumber Number_create();
    void Number_destroy(HNumber n);
    void Number_setNumber(HNumber n, int x);
    void Number_print(HNumber n);
#ifdef __cplusplus
}
#endif