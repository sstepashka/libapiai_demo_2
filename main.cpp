#include <iostream>

#include <apiai/AI.h>

using namespace std;

int main(int argc, char const *argv[])
{
    ai::AI::global_init();

    cout << "Hello, World!" << endl;

    ai::AI::global_clean();

    return 0;
}