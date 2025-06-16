-- create project
target(PROJECT_NAME)
    set_kind "binary"

    set_warnings "extra" 

    if is_mode("Package") then
        set_basename(PROJECT_NAME .. "_$(arch)")
    else
        set_basename(PROJECT_NAME .. "_$(mode)_$(arch)")
    end

    set_targetdir "../game/$(plat)"
    set_objectdir "../build/obj"

    add_headerfiles{ "**.h", "**.hpp" }
    add_files "**.cpp"
    add_includedirs "./"
    
    target_platform()
target_end()