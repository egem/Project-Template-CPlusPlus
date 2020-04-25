#include "ModuleNameExceptions.hpp"

const std::string ModuleNameModule::ModuleNameException::exceptionName = "ModuleNameException";

ModuleNameModule::ModuleNameException::ModuleNameException(std::string message)
:m_message(exceptionName + " : " + message)
{

}

const char* ModuleNameModule::ModuleNameException::what() const noexcept
{
    return m_message.c_str();
}