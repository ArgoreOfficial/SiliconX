#ifdef SIX_PLATFORM_3DS

#include <six/core/platform/thread.h>

#include <3ds.h>

void six::Thread::sleepFor( uint64_t _nanoseconds )
{
	svcSleepThread( _nanoseconds );
}

void six::Thread::yield()
{
	// is there a svcYield?
	svcSleepThread( 0 );
}

#endif