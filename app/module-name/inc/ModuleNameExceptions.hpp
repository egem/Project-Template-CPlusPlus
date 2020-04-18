#include <iostream>
#include <cstring>
#include <exception>

namespace ModuleNameModule
{
    class ModuleNameException: public std::exception
    {
        private:
            static const std::string exceptionName;
            std::string m_message;

        public:
            explicit ModuleNameException(std::string message);
            virtual ~ModuleNameException() = default;
            const char* what() const noexcept;
    };
}