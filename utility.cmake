



function(set_compiler_flags target_name)
    if (MSVC)
        target_compile_options(
            ${target_name} 
            PRIVATE
            /W4 
            ) 
        target_link_options(
            ${target_name} 
            PRIVATE 
            )
    else()
        target_compile_options(
            ${target_name} 
            PRIVATE 
            $<$<COMPILE_LANGUAGE:CXX>:
            "$<$<CONFIG:RELEASE>:-O3>"
            "-Wall"
            "-Wextra"
             "$<$<CONFIG:RELEASE>:-Werror>"
            "$<$<CONFIG:RELEASE>:-O3>"
            >
        )  
    endif()
endfunction()

macro(set_source_group name)
    set(${name} "${ARGN}")  
    source_group(${name} FILES ${ARGN}) 
endmacro(set_source_group)

macro(configure_default_output_directories)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
    set(EUREKA_COMPILED_SHADERS_DIRECTORY ${CMAKE_BINARY_DIR}/compiled_shaders)
    #message("===================================================================")
    #message("CMAKE_ARCHIVE_OUTPUT_DIRECTORY = ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
    #message("CMAKE_LIBRARY_OUTPUT_DIRECTORY = ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
    #message("CMAKE_RUNTIME_OUTPUT_DIRECTORY = ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
    #message("===================================================================")

endmacro()