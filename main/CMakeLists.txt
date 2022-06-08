

add_executable(
    main
    "main.cpp"
) 

set_compiler_flags(main)   

target_precompile_headers(main REUSE_FROM precompiled)

target_link_libraries(
    main
    PRIVATE 
    precompiled
)