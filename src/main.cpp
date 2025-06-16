
#include <six/core/platform/platform.h>
#include <six/core/platform/thread.h>

#include <stdio.h>

///////////////////////////////////////////////////////////////////////////////////////

int main( int /*argc*/, char* /*argv*/[] )
{
	six::Platform::initialize();

	printf( "wawowewawo\n" );
	six::Thread::sleepForSeconds( 2 );
	printf( "bye bye!\n" );
	six::Thread::sleepForSeconds( 1 );
	
	six::Platform::deinitialize();

	return 0;
}
