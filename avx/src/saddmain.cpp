#include <iostream>

extern "C" int sadd(int a, int b);

int main(int, char**)
{
    std::cout << "Let's see " << sadd(2, 10) << std::endl;
    return 0;
}
