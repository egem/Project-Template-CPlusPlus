#include <iostream>
#include "ModuleNameModule.hpp"

int main()
{
    try
    {
        ModuleName object;
        object.method("");
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
        exit(EXIT_FAILURE);
    }

    exit(EXIT_SUCCESS);
}