includes "toolchains/mipsel-none-elf.lua" -- ps1 toolchain

function load()
    set_languages( "c17", "cxx17" )
    add_defines( "SIX_C17", "SIX_CPP17" )
    add_defines( "SIX_PLATFORM_3DS" )

    set_toolchains( "arm-none-eabi" )
end

PLATFORMS[ "arm_3ds" ] = { 
    plat="3ds",
    arch={ "arm_3ds", "arm_3ds"  },
    load=load
}