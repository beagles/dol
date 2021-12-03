#include <iostream>

extern "C" void avxadd(float a[], float b[], float result[]);

typedef float __attribute__((__aligned__(64))) al_float;

al_float v1 [] = { 10.0, 20.0, 30.0, 40.0, 50.0, 60.0 };;
al_float v2 [] = { 100.0, 200.0, 300.0, 400.0, 500.0, 600.0 };;
al_float vresult [6];

int main(int, char**)
{
    avxadd(v1, v2, vresult);
    for( int i = 0; i < 6; ++i)
    {
        std::cout << v1[i] << " + " << v2[i] << " = " << vresult[i] << std::endl;
    }
    return 0;
}
