
includes "../modules/find_psn00bsdk.lua"

local DEVKITPRO = find_devkitpro()
local DEVKITARM = path.join( DEVKITPRO, "devkitARM" )
local BINDIR = path.join( DEVKITARM, "bin" )

local ARCH = { 
    "-march=armv6k", 
    "-mtune=mpcore", 
    "-mfloat-abi=hard", 
    "-mtp=soft" 
    }

local CFLAGS = {
    "-g", 
    "-Wall", 
    "-O2", 
    "-mword-relocations", 
    "-ffunction-sections"
}

local CXXFLAGS = {
    "-MMD",
    "-MP",
    "-fno-rtti",
    "-fno-exceptions",
    "-std=gnu++11"
}

local LDFLAGS = {
    "-specs=3dsx.specs", 
    "-g",
    "-Wl,-Map,build/map.map"
}    

-- 'mipsel-none-elf-gcc.exe -DPSN00BSDK=1 -I %{PSN00BSDK_INCLUDES} -g -g -Wa,--strip-local-absolute -ffreestanding -fno-builtin -nostdlib -fdata-sections -ffunction-sections -fsigned-char -fno-strict-overflow -fdiagnostics-color=always -msoft-float -march=r3000 -mtune=r3000 -mabi=32 -mno-mt -mno-llsc -Og -mdivide-breaks -G8 -fno-pic -mno-abicalls -mgpopt -mno-extern-sdata -MD -MT %{cfg.objdir}%(Filename).obj -MF %{cfg.objdir}%(Filename).obj.d -o %{cfg.objdir}%(Filename).obj -c %(FullPath)'

toolchain("mipsel-none-elf")
    set_kind "standalone"

    set_sdkdir( DEVKITARM )
    set_bindir( BINDIR )

    set_toolset( "cc",  path.join( BINDIR, "mipsel-none-elf-gcc" ) )
    set_toolset( "cxx", path.join( BINDIR, "mipsel-none-elf-gcc" ) )
    set_toolset( "ld",  path.join( BINDIR, "mipsel-none-elf-gcc" ) )
    
    add_defines( "__3DS__ " )
    
    add_cflags  ( CFLAGS, ARCH )
    add_cxxflags( CFLAGS, CXXFLAGS, ARCH )
    add_ldflags ( LDFLAGS, ARCH )
        
toolchain_end()
