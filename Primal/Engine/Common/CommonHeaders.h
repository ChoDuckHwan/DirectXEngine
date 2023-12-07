#pragma once

//   c/c++ headers
#pragma warning(disable: 4530)
#include <cstdint>
#include <assert.h>
#include <typeinfo>

#if defined(_WIN64)
#include <DirectXMath.h>
#endif

#include "PrimitiveTypes.h"
#include "Utilities/Utilities.h"

#ifdef _DEBUG
#define DEBUG_OP(x) x
#else
#define DEBUG_OP(x)
#endif