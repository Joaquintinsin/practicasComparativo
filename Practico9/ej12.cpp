#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

using namespace std;

int main(int argc, char *argv[])
{
    std::vector<std::string> args;
    for (int i = 1; i < argc; i++) {
        args.push_back(argv[i]);
    }
    std::sort(args.begin(), args.end(), std::less<std::string>());
    std::cout << "Argumentos ordenados en orden descendente: \n";
    for (const auto &arg : args) {
        std::cout << arg << " ";
    }
    std::cout << std::endl;

    return 0;
}