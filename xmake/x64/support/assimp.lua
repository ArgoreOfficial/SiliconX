-- local ASSIMP_STATIC_ROOT = "D:/SDK/assimp-static/"

function main(target)
    target:add( "defines", "SIX_SUPPORT_ASSIMP" )

    -- TODO: change x86 to winxp-x86
    --if target:is_arch( "x86" ) and os.arch() == "x64" then
    --    target:add( "includedirs", "./libs/assimp/i686-w64-mingw32/include" )
    --    target:add( "linkdirs", "./libs/assimp/i686-w64-mingw32/lib/" )
    --    target:add( "links", "assimp.dll" )
    --else
    --end
    target:add( "packages", "assimp" )
end