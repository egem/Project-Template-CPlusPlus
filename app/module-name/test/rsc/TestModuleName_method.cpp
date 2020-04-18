#include "gtest/gtest.h"

TEST(TestModuleName, test_THROW_EXCEPTION_after_INPUT_LENGTH_IS_ZERO)
{
    try
    {
        /************************** Arrange **************************/
        ASSERT_TRUE(false);
    }
    catch(std::exception& e)
    {
        ASSERT_TRUE(false);
    }
}