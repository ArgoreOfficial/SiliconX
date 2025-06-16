#ifdef SIX_PLATFORM_3DS

#include <six/core/platform/platform.h>

#include <3ds.h>
#include <citro3d.h>

const char* gFileSystemPathPrefix = "data:/";

void six::Platform::initialize()
{
	// platform init
	gfxInitDefault();
	C3D_Init( C3D_DEFAULT_CMDBUF_SIZE );
	// console init
	consoleInit( GFX_TOP, 0 );

//	six::Console::Internal::g_initialized = true;
}

void six::Platform::deinitialize()
{
//	six::Console::Internal::g_initialized = false;

	C3D_Fini();
	gfxExit();
}

#endif