function load_platform_wasm()
    
end

function target_platform_wasm( target )
    local root = "../"
    
    -- preload resource files
    target:add( "ldflags", "--embed-file game/res@/res" )

    -- add supports
    target:add( "deps", "GLAD" )
    import(root .. "platform.support.libsdl")(target)

    target:add( "packages", "assimp" )
end

table.insert( PLATFORMS, { 
    plat="wasm",
    arch={ "wasm32" },
    load=load_platform_wasm,
    target=target_platform_wasm
} )
