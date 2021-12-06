#include <iostream>

extern "C" void avxadd(float a[], float b[], float result[]);
extern "C" void avxdiv(float a[], float factor[], float result[]);

typedef float __attribute__((__aligned__(64))) al_float;

al_float v1 [] = { 10.0, 20.0, 30.0, 40.0, 50.0, 60.0 };;
al_float v2 [] = { 100.0, 200.0, 300.0, 400.0, 500.0, 600.0 };
float divisor[] = { 0.3, -1.4, 2.5, 0.666666, 50.2, 100.2 };
al_float vresult [6];
al_float divresult[6];

int main(int, char**)
{
    avxadd(v1, v2, vresult);
    avxdiv(vresult, divisor, divresult);
    for( int i = 0; i < 6; ++i)
    {
        std::cout << v1[i] << " + " << v2[i] << " = " << vresult[i] << std::endl;
        std::cout << vresult[i] << " / " << divisor[i]  << " = " << divresult[i] << std::endl;
    }
    return 0;
}
