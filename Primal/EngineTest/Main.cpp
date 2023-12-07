
#pragma comment(lib, "engine.lib")
#include <crtdbg.h>

#define TEST_ENTITY_COMMENTS 1
#include "TestEntityComponents.h"
#if TEST_ENTITY_COMMENTS
#else
#error One of the test need to be enabled
#endif

int main()
{
#if _DEBUG
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
#endif
	engine_test test{};

	if(test.initialize())
	{
		test.run();
	}
	test.shutdown();
}