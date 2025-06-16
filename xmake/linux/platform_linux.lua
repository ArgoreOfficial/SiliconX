function load_platform_linux()
    
end

function target_platform_linux( target )
    
end

table.insert( PLATFORMS, { 
    plat="linux", 
    arch={ "x86_64" }, 
    load=load_platform_linux, 
    target=target_platform_linux 
} )
