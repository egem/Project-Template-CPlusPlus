#include "ModuleName.hpp"
#include "ModuleNameExceptions.hpp"

void ModuleName::method(std::string input)
{
    if(input.length() == 0)
    {
        throw ModuleNameModule::ModuleNameException("Input is empty");
    }

    std::cout << "Input : " << input << std::endl;
}