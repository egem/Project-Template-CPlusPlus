#include "gtest/gtest.h"
#include "ModuleNameModule.hpp"

#include "TestModuleName.hpp"

TEST_F(TestModuleName, test_THROW_EXCEPTION_after_INPUT_LENGTH_IS_ZERO)
{
    try
    {
        /************************** Arrange **************************/
        ModuleName moduleObject;

        /************************** Act **************************/
        moduleObject.method("");

        /************************** Assert **************************/
        ASSERT_TRUE(false);
    }
    catch(ModuleNameModule::ModuleNameException& e)
    {
        // Expected Result
    }
    catch(...)
    {
        ASSERT_TRUE(false);
    }
}