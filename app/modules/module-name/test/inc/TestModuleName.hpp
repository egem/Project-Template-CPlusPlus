#pragma once

#include <memory>
#include <utility>

#include "gtest/gtest.h"

class TestModuleName : public ::testing::Test
{
public:
    TestModuleName()
    {
    }

    virtual void SetUp()
    {

    }

    virtual void TearDown()
    {

    }
};