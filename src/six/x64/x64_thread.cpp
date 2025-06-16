#ifdef SIX_PLATFORM_WINDOWS

#include <six/core/platform/thread.h>

#include <chrono>

void six::Thread::sleepFor( uint64_t _nanoseconds )
{
	std::chrono::nanoseconds time{ _nanoseconds };
	std::this_thread::sleep_for( time );
}

void six::Thread::yield()
{
	std::this_thread::yield();
}

#endif